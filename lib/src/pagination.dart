import 'package:api/api.dart';
import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:org_data/org_data.dart';
import 'package:org_data/src/graphql/query.gql.dart';
import 'package:org_data/src/schema.graphqls.dart';

extension AsInput on Avatar {
  Input$UploadingHsl? get asHslInput {
    if (!isColors) {
      return null;
    }

    return Input$UploadingHsl(hsl: value);
  }

  Input$Upload? get asDataInput {
    if (!isData) {
      return null;
    }

    return Input$Upload(
      filename: fileName,
      encoding: encoding,
      data: data,
      mimeType: mimeType!,
    );
  }
}

class PaginationMembers
    extends PaginationList<Fragment$Member, Options$Query$GetMembers> {
  PaginationMembers({
    super.key,
    required super.itemBuilder,
    super.loadingBuilder,
    super.separatorBuilder,
    super.padding,
    super.additionalWidgets,
  }) : super(
         operation: Options$Query$GetMembers(
           fetchPolicy: FetchPolicy.networkOnly,
           cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
         ),
         fromJson: Fragment$Member.fromJson,
       );
}

class PaginationMyMemberships
    extends
        PaginationList<
          Fragment$TempMembership,
          Options$Query$GetAllOrganizations
        > {
  PaginationMyMemberships({
    super.key,
    required super.itemBuilder,
    super.loadingBuilder,
    super.separatorBuilder,
    super.padding,
    super.additionalWidgets,
  }) : super(
         operation: Options$Query$GetAllOrganizations(
           fetchPolicy: FetchPolicy.networkOnly,
           cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
         ),
         fromJson: Fragment$TempMembership.fromJson,
       );
}

class PaginationList<O, Q extends QueryOptions> extends StatefulWidget {
  const PaginationList({
    super.key,
    required this.operation,
    required this.itemBuilder,
    this.path,
    this.loadingBuilder,
    this.separatorBuilder,
    this.padding,
    required this.fromJson,
    this.additionalWidgets,
  });

  final Q operation;
  final O Function(Map<String, dynamic> object) fromJson;
  final Widget Function(O object) itemBuilder;
  final String? path;
  final Widget Function(BuildContext context)? loadingBuilder;
  final Widget Function(BuildContext context, int index)? separatorBuilder;
  final EdgeInsetsGeometry? padding;
  final List<Widget>? additionalWidgets;

  @override
  State<PaginationList<O, Q>> createState() => PaginationListState<O, Q>();
}

class PaginationListState<O, Q extends QueryOptions>
    extends State<PaginationList<O, Q>> {
  late String? _path = widget.path;

  // find and object that has fields "items" and "pageInfo" and __typename includes possibleTypesMap
  String findPath(Map<String, dynamic> data) {
    final possibleConnections = (possibleTypesMap["Connection"] as Set<String>);

    String? p;
    dynamic current = data;
    String? currentKey;

    while (current != null && current is Map) {
      final type = current["__typename"];
      if (p == null) {
        p = currentKey;
      } else {
        p = "$p.$currentKey";
      }
      if (possibleConnections.contains(type)) {
        break;
      }

      currentKey = current.keys.toList().firstWhere((e) => e != "__typename");
      current = current[currentKey];
    }

    p ??= "";

    return p;
  }

  Map<String, dynamic> mergeArraysInPath(
    String path,
    Map<String, dynamic> oldData,
    Map<String, dynamic> newData,
  ) {
    final parts = path.split(".");

    dynamic currentNew = newData;
    dynamic currentOld = oldData;

    for (var part in parts) {
      currentNew = currentNew[part];
      currentOld = currentOld[part];
    }

    currentOld["items"] = [...currentOld["items"], ...currentNew["items"]];
    currentOld["pageInfo"] = currentNew["pageInfo"];

    return oldData;
  }

  Map<String, dynamic> object(Map<String, dynamic> data) {
    final path = _path;
    if (path == null || path.isEmpty) {
      throw Exception("No path found");
    }
    final parts = path.split(".");
    dynamic current = data;
    for (var part in parts) {
      current = current[part];
    }
    return current;
  }

  List items(Map<String, dynamic> data) {
    final obj = object(data);
    return obj["items"];
  }

  Fragment$PageInfo readPageInfo(Map<String, dynamic> data) {
    final obj = object(data);
    if (obj["pageInfo"] == null) {
      return Fragment$PageInfo(hasNextPage: false, nextCursor: null);
    }
    return Fragment$PageInfo.fromJson(obj["pageInfo"]);
  }

  bool gotFirstResult = false;

  bool get hasNextPage {
    if (_pageInfo == null) {
      return false;
    }
    return pageInfo.hasNextPage && pageInfo.nextCursor != null;
  }

  Fragment$PageInfo? _pageInfo;

  Fragment$PageInfo get pageInfo => _pageInfo!;

  bool _fetchingMore = false;

  Future<void> refetch() async {}

  @override
  Widget build(BuildContext context) {
    return Query(
      options: widget.operation,

      builder: (res, {Refetch? refetch, FetchMore? fetchMore}) {
        if (res.data != null) {
          if (!gotFirstResult) {
            _path ??= findPath(res.data!);
            gotFirstResult = true;
          }
          _pageInfo = readPageInfo(res.data!);
        }

        if (res.data == null && res.isLoading) {
          return widget.loadingBuilder?.call(context) ?? const SizedBox();
        }

        if (res.exception != null) {
          return Text(res.exception.toString());
        }

        final items = this.items(res.data!);

        final itemCount = this.itemCount(items.length);

        Widget itemBuilder(BuildContext context, int index) {
          if (index >= items.length) {
            if (index == itemCount - 1 && hasNextPage) {
              assert(hasNextPage);
              if (!_fetchingMore) {
                _fetchingMore = true;
                fetchMore
                    ?.call(
                      FetchMoreOptions(
                        updateQuery: (o, n) {
                          final res = mergeArraysInPath(_path!, o!, n!);
                          return res;
                        },
                        variables: {
                          "pagination": Input$PaginationInput.fromJson(
                            (widget.operation.variables["pagination"]
                                    as Map<String, dynamic>?) ??
                                {},
                          ).copyWith(cursor: pageInfo.nextCursor),
                        },
                      ),
                    )
                    .whenComplete(() {
                      _fetchingMore = false;
                    });
                return Center(
                  child:
                      widget.loadingBuilder?.call(context) ??
                      const CupertinoActivityIndicator(),
                );
              } else {
                return Center(
                  child:
                      widget.loadingBuilder?.call(context) ??
                      const CupertinoActivityIndicator(),
                );
              }
            }

            return widget.additionalWidgets![index - items.length];
          }

          return widget.itemBuilder(widget.fromJson(items[index]));
        }

        return ListView.separated(
          padding: widget.padding,
          itemBuilder: itemBuilder,
          separatorBuilder:
              widget.separatorBuilder ??
              (context, index) => const SizedBox(height: 0),
          itemCount: itemCount,
        );
      },
    );
  }

  int itemCount(int items) {
    var count = items;
    if (widget.additionalWidgets != null) {
      count += widget.additionalWidgets!.length;
    }
    if (pageInfo.hasNextPage) {
      count += 1;
    }
    return count;
  }
}
