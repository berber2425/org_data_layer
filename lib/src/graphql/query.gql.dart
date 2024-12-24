import '../schema.graphqls.dart';
import 'common/fragments.gql.dart';
import 'dart:async';
import 'fragments.gql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$MyMemberships {
  Query$MyMemberships({
    required this.org,
    this.$__typename = 'Query',
  });

  factory Query$MyMemberships.fromJson(Map<String, dynamic> json) {
    final l$org = json['org'];
    final l$$__typename = json['__typename'];
    return Query$MyMemberships(
      org: Query$MyMemberships$org.fromJson((l$org as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MyMemberships$org org;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$org = org;
    _resultData['org'] = l$org.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$org = org;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$org,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MyMemberships || runtimeType != other.runtimeType) {
      return false;
    }
    final l$org = org;
    final lOther$org = other.org;
    if (l$org != lOther$org) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MyMemberships on Query$MyMemberships {
  CopyWith$Query$MyMemberships<Query$MyMemberships> get copyWith =>
      CopyWith$Query$MyMemberships(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MyMemberships<TRes> {
  factory CopyWith$Query$MyMemberships(
    Query$MyMemberships instance,
    TRes Function(Query$MyMemberships) then,
  ) = _CopyWithImpl$Query$MyMemberships;

  factory CopyWith$Query$MyMemberships.stub(TRes res) =
      _CopyWithStubImpl$Query$MyMemberships;

  TRes call({
    Query$MyMemberships$org? org,
    String? $__typename,
  });
  CopyWith$Query$MyMemberships$org<TRes> get org;
}

class _CopyWithImpl$Query$MyMemberships<TRes>
    implements CopyWith$Query$MyMemberships<TRes> {
  _CopyWithImpl$Query$MyMemberships(
    this._instance,
    this._then,
  );

  final Query$MyMemberships _instance;

  final TRes Function(Query$MyMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? org = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyMemberships(
        org: org == _undefined || org == null
            ? _instance.org
            : (org as Query$MyMemberships$org),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MyMemberships$org<TRes> get org {
    final local$org = _instance.org;
    return CopyWith$Query$MyMemberships$org(local$org, (e) => call(org: e));
  }
}

class _CopyWithStubImpl$Query$MyMemberships<TRes>
    implements CopyWith$Query$MyMemberships<TRes> {
  _CopyWithStubImpl$Query$MyMemberships(this._res);

  TRes _res;

  call({
    Query$MyMemberships$org? org,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MyMemberships$org<TRes> get org =>
      CopyWith$Query$MyMemberships$org.stub(_res);
}

const documentNodeQueryMyMemberships = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MyMemberships'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'org'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'my_memberships'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'PageInfo'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'items'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'TempMembership'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPageInfo,
  fragmentDefinitionTempMembership,
]);
Query$MyMemberships _parserFn$Query$MyMemberships(Map<String, dynamic> data) =>
    Query$MyMemberships.fromJson(data);
typedef OnQueryComplete$Query$MyMemberships = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MyMemberships?,
);

class Options$Query$MyMemberships
    extends graphql.QueryOptions<Query$MyMemberships> {
  Options$Query$MyMemberships({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MyMemberships? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MyMemberships? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$MyMemberships(data),
                  ),
          onError: onError,
          document: documentNodeQueryMyMemberships,
          parserFn: _parserFn$Query$MyMemberships,
        );

  final OnQueryComplete$Query$MyMemberships? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MyMemberships
    extends graphql.WatchQueryOptions<Query$MyMemberships> {
  WatchOptions$Query$MyMemberships({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MyMemberships? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryMyMemberships,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MyMemberships,
        );
}

class FetchMoreOptions$Query$MyMemberships extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MyMemberships(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryMyMemberships,
        );
}

extension ClientExtension$Query$MyMemberships on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MyMemberships>> query$MyMemberships(
          [Options$Query$MyMemberships? options]) async =>
      await this.query(options ?? Options$Query$MyMemberships());
  graphql.ObservableQuery<Query$MyMemberships> watchQuery$MyMemberships(
          [WatchOptions$Query$MyMemberships? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MyMemberships());
  void writeQuery$MyMemberships({
    required Query$MyMemberships data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryMyMemberships)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MyMemberships? readQuery$MyMemberships({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryMyMemberships)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MyMemberships.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$MyMemberships> useQuery$MyMemberships(
        [Options$Query$MyMemberships? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$MyMemberships());
graphql.ObservableQuery<Query$MyMemberships> useWatchQuery$MyMemberships(
        [WatchOptions$Query$MyMemberships? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$MyMemberships());

class Query$MyMemberships$Widget
    extends graphql_flutter.Query<Query$MyMemberships> {
  Query$MyMemberships$Widget({
    widgets.Key? key,
    Options$Query$MyMemberships? options,
    required graphql_flutter.QueryBuilder<Query$MyMemberships> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$MyMemberships(),
          builder: builder,
        );
}

class Query$MyMemberships$org {
  Query$MyMemberships$org({
    required this.my_memberships,
    this.$__typename = 'OrgQuery',
  });

  factory Query$MyMemberships$org.fromJson(Map<String, dynamic> json) {
    final l$my_memberships = json['my_memberships'];
    final l$$__typename = json['__typename'];
    return Query$MyMemberships$org(
      my_memberships: Query$MyMemberships$org$my_memberships.fromJson(
          (l$my_memberships as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MyMemberships$org$my_memberships my_memberships;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$my_memberships = my_memberships;
    _resultData['my_memberships'] = l$my_memberships.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$my_memberships = my_memberships;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$my_memberships,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MyMemberships$org || runtimeType != other.runtimeType) {
      return false;
    }
    final l$my_memberships = my_memberships;
    final lOther$my_memberships = other.my_memberships;
    if (l$my_memberships != lOther$my_memberships) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MyMemberships$org on Query$MyMemberships$org {
  CopyWith$Query$MyMemberships$org<Query$MyMemberships$org> get copyWith =>
      CopyWith$Query$MyMemberships$org(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MyMemberships$org<TRes> {
  factory CopyWith$Query$MyMemberships$org(
    Query$MyMemberships$org instance,
    TRes Function(Query$MyMemberships$org) then,
  ) = _CopyWithImpl$Query$MyMemberships$org;

  factory CopyWith$Query$MyMemberships$org.stub(TRes res) =
      _CopyWithStubImpl$Query$MyMemberships$org;

  TRes call({
    Query$MyMemberships$org$my_memberships? my_memberships,
    String? $__typename,
  });
  CopyWith$Query$MyMemberships$org$my_memberships<TRes> get my_memberships;
}

class _CopyWithImpl$Query$MyMemberships$org<TRes>
    implements CopyWith$Query$MyMemberships$org<TRes> {
  _CopyWithImpl$Query$MyMemberships$org(
    this._instance,
    this._then,
  );

  final Query$MyMemberships$org _instance;

  final TRes Function(Query$MyMemberships$org) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? my_memberships = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyMemberships$org(
        my_memberships: my_memberships == _undefined || my_memberships == null
            ? _instance.my_memberships
            : (my_memberships as Query$MyMemberships$org$my_memberships),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MyMemberships$org$my_memberships<TRes> get my_memberships {
    final local$my_memberships = _instance.my_memberships;
    return CopyWith$Query$MyMemberships$org$my_memberships(
        local$my_memberships, (e) => call(my_memberships: e));
  }
}

class _CopyWithStubImpl$Query$MyMemberships$org<TRes>
    implements CopyWith$Query$MyMemberships$org<TRes> {
  _CopyWithStubImpl$Query$MyMemberships$org(this._res);

  TRes _res;

  call({
    Query$MyMemberships$org$my_memberships? my_memberships,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MyMemberships$org$my_memberships<TRes> get my_memberships =>
      CopyWith$Query$MyMemberships$org$my_memberships.stub(_res);
}

class Query$MyMemberships$org$my_memberships {
  Query$MyMemberships$org$my_memberships({
    required this.pageInfo,
    required this.items,
    this.$__typename = 'TempMembershipConnection',
  });

  factory Query$MyMemberships$org$my_memberships.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$MyMemberships$org$my_memberships(
      pageInfo:
          Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      items: (l$items as List<dynamic>)
          .map((e) =>
              Fragment$TempMembership.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo pageInfo;

  final List<Fragment$TempMembership> items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$items = items;
    _resultData['items'] = l$items.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      Object.hashAll(l$items.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MyMemberships$org$my_memberships ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items.length != lOther$items.length) {
      return false;
    }
    for (int i = 0; i < l$items.length; i++) {
      final l$items$entry = l$items[i];
      final lOther$items$entry = lOther$items[i];
      if (l$items$entry != lOther$items$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MyMemberships$org$my_memberships
    on Query$MyMemberships$org$my_memberships {
  CopyWith$Query$MyMemberships$org$my_memberships<
          Query$MyMemberships$org$my_memberships>
      get copyWith => CopyWith$Query$MyMemberships$org$my_memberships(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MyMemberships$org$my_memberships<TRes> {
  factory CopyWith$Query$MyMemberships$org$my_memberships(
    Query$MyMemberships$org$my_memberships instance,
    TRes Function(Query$MyMemberships$org$my_memberships) then,
  ) = _CopyWithImpl$Query$MyMemberships$org$my_memberships;

  factory CopyWith$Query$MyMemberships$org$my_memberships.stub(TRes res) =
      _CopyWithStubImpl$Query$MyMemberships$org$my_memberships;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$TempMembership>? items,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes items(
      Iterable<Fragment$TempMembership> Function(
              Iterable<
                  CopyWith$Fragment$TempMembership<Fragment$TempMembership>>)
          _fn);
}

class _CopyWithImpl$Query$MyMemberships$org$my_memberships<TRes>
    implements CopyWith$Query$MyMemberships$org$my_memberships<TRes> {
  _CopyWithImpl$Query$MyMemberships$org$my_memberships(
    this._instance,
    this._then,
  );

  final Query$MyMemberships$org$my_memberships _instance;

  final TRes Function(Query$MyMemberships$org$my_memberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MyMemberships$org$my_memberships(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo),
        items: items == _undefined || items == null
            ? _instance.items
            : (items as List<Fragment$TempMembership>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes items(
          Iterable<Fragment$TempMembership> Function(
                  Iterable<
                      CopyWith$Fragment$TempMembership<
                          Fragment$TempMembership>>)
              _fn) =>
      call(
          items:
              _fn(_instance.items.map((e) => CopyWith$Fragment$TempMembership(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$MyMemberships$org$my_memberships<TRes>
    implements CopyWith$Query$MyMemberships$org$my_memberships<TRes> {
  _CopyWithStubImpl$Query$MyMemberships$org$my_memberships(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$TempMembership>? items,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  items(_fn) => _res;
}

class Variables$Query$GetMember {
  factory Variables$Query$GetMember({required String id}) =>
      Variables$Query$GetMember._({
        r'id': id,
      });

  Variables$Query$GetMember._(this._$data);

  factory Variables$Query$GetMember.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetMember._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetMember<Variables$Query$GetMember> get copyWith =>
      CopyWith$Variables$Query$GetMember(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetMember ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetMember<TRes> {
  factory CopyWith$Variables$Query$GetMember(
    Variables$Query$GetMember instance,
    TRes Function(Variables$Query$GetMember) then,
  ) = _CopyWithImpl$Variables$Query$GetMember;

  factory CopyWith$Variables$Query$GetMember.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMember;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetMember<TRes>
    implements CopyWith$Variables$Query$GetMember<TRes> {
  _CopyWithImpl$Variables$Query$GetMember(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMember _instance;

  final TRes Function(Variables$Query$GetMember) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetMember._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetMember<TRes>
    implements CopyWith$Variables$Query$GetMember<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMember(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetMember {
  Query$GetMember({
    required this.org,
    this.$__typename = 'Query',
  });

  factory Query$GetMember.fromJson(Map<String, dynamic> json) {
    final l$org = json['org'];
    final l$$__typename = json['__typename'];
    return Query$GetMember(
      org: Query$GetMember$org.fromJson((l$org as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMember$org org;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$org = org;
    _resultData['org'] = l$org.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$org = org;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$org,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMember || runtimeType != other.runtimeType) {
      return false;
    }
    final l$org = org;
    final lOther$org = other.org;
    if (l$org != lOther$org) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMember on Query$GetMember {
  CopyWith$Query$GetMember<Query$GetMember> get copyWith =>
      CopyWith$Query$GetMember(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMember<TRes> {
  factory CopyWith$Query$GetMember(
    Query$GetMember instance,
    TRes Function(Query$GetMember) then,
  ) = _CopyWithImpl$Query$GetMember;

  factory CopyWith$Query$GetMember.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMember;

  TRes call({
    Query$GetMember$org? org,
    String? $__typename,
  });
  CopyWith$Query$GetMember$org<TRes> get org;
}

class _CopyWithImpl$Query$GetMember<TRes>
    implements CopyWith$Query$GetMember<TRes> {
  _CopyWithImpl$Query$GetMember(
    this._instance,
    this._then,
  );

  final Query$GetMember _instance;

  final TRes Function(Query$GetMember) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? org = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMember(
        org: org == _undefined || org == null
            ? _instance.org
            : (org as Query$GetMember$org),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMember$org<TRes> get org {
    final local$org = _instance.org;
    return CopyWith$Query$GetMember$org(local$org, (e) => call(org: e));
  }
}

class _CopyWithStubImpl$Query$GetMember<TRes>
    implements CopyWith$Query$GetMember<TRes> {
  _CopyWithStubImpl$Query$GetMember(this._res);

  TRes _res;

  call({
    Query$GetMember$org? org,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMember$org<TRes> get org =>
      CopyWith$Query$GetMember$org.stub(_res);
}

const documentNodeQueryGetMember = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMember'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'org'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'us'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'members'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'pagination'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'filter'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'id'),
                            value: VariableNode(name: NameNode(value: 'id')),
                          )
                        ]),
                      )
                    ]),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'items'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Member'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'pageInfo'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PageInfo'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionMember,
  fragmentDefinitionPublicUser,
  fragmentDefinitionPageInfo,
]);
Query$GetMember _parserFn$Query$GetMember(Map<String, dynamic> data) =>
    Query$GetMember.fromJson(data);
typedef OnQueryComplete$Query$GetMember = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMember?,
);

class Options$Query$GetMember extends graphql.QueryOptions<Query$GetMember> {
  Options$Query$GetMember({
    String? operationName,
    required Variables$Query$GetMember variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMember? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMember? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetMember(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMember,
          parserFn: _parserFn$Query$GetMember,
        );

  final OnQueryComplete$Query$GetMember? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMember
    extends graphql.WatchQueryOptions<Query$GetMember> {
  WatchOptions$Query$GetMember({
    String? operationName,
    required Variables$Query$GetMember variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMember? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetMember,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMember,
        );
}

class FetchMoreOptions$Query$GetMember extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMember({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetMember variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetMember,
        );
}

extension ClientExtension$Query$GetMember on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMember>> query$GetMember(
          Options$Query$GetMember options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetMember> watchQuery$GetMember(
          WatchOptions$Query$GetMember options) =>
      this.watchQuery(options);
  void writeQuery$GetMember({
    required Query$GetMember data,
    required Variables$Query$GetMember variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetMember),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMember? readQuery$GetMember({
    required Variables$Query$GetMember variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetMember),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMember.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMember> useQuery$GetMember(
        Options$Query$GetMember options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetMember> useWatchQuery$GetMember(
        WatchOptions$Query$GetMember options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetMember$Widget extends graphql_flutter.Query<Query$GetMember> {
  Query$GetMember$Widget({
    widgets.Key? key,
    required Options$Query$GetMember options,
    required graphql_flutter.QueryBuilder<Query$GetMember> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetMember$org {
  Query$GetMember$org({
    required this.us,
    this.$__typename = 'OrgQuery',
  });

  factory Query$GetMember$org.fromJson(Map<String, dynamic> json) {
    final l$us = json['us'];
    final l$$__typename = json['__typename'];
    return Query$GetMember$org(
      us: Query$GetMember$org$us.fromJson((l$us as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMember$org$us us;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$us = us;
    _resultData['us'] = l$us.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$us = us;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$us,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMember$org || runtimeType != other.runtimeType) {
      return false;
    }
    final l$us = us;
    final lOther$us = other.us;
    if (l$us != lOther$us) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMember$org on Query$GetMember$org {
  CopyWith$Query$GetMember$org<Query$GetMember$org> get copyWith =>
      CopyWith$Query$GetMember$org(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMember$org<TRes> {
  factory CopyWith$Query$GetMember$org(
    Query$GetMember$org instance,
    TRes Function(Query$GetMember$org) then,
  ) = _CopyWithImpl$Query$GetMember$org;

  factory CopyWith$Query$GetMember$org.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMember$org;

  TRes call({
    Query$GetMember$org$us? us,
    String? $__typename,
  });
  CopyWith$Query$GetMember$org$us<TRes> get us;
}

class _CopyWithImpl$Query$GetMember$org<TRes>
    implements CopyWith$Query$GetMember$org<TRes> {
  _CopyWithImpl$Query$GetMember$org(
    this._instance,
    this._then,
  );

  final Query$GetMember$org _instance;

  final TRes Function(Query$GetMember$org) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? us = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMember$org(
        us: us == _undefined || us == null
            ? _instance.us
            : (us as Query$GetMember$org$us),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMember$org$us<TRes> get us {
    final local$us = _instance.us;
    return CopyWith$Query$GetMember$org$us(local$us, (e) => call(us: e));
  }
}

class _CopyWithStubImpl$Query$GetMember$org<TRes>
    implements CopyWith$Query$GetMember$org<TRes> {
  _CopyWithStubImpl$Query$GetMember$org(this._res);

  TRes _res;

  call({
    Query$GetMember$org$us? us,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMember$org$us<TRes> get us =>
      CopyWith$Query$GetMember$org$us.stub(_res);
}

class Query$GetMember$org$us {
  Query$GetMember$org$us({
    required this.members,
    this.$__typename = 'Organization',
  });

  factory Query$GetMember$org$us.fromJson(Map<String, dynamic> json) {
    final l$members = json['members'];
    final l$$__typename = json['__typename'];
    return Query$GetMember$org$us(
      members: Query$GetMember$org$us$members.fromJson(
          (l$members as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMember$org$us$members members;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$members = members;
    _resultData['members'] = l$members.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$members = members;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$members,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMember$org$us || runtimeType != other.runtimeType) {
      return false;
    }
    final l$members = members;
    final lOther$members = other.members;
    if (l$members != lOther$members) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMember$org$us on Query$GetMember$org$us {
  CopyWith$Query$GetMember$org$us<Query$GetMember$org$us> get copyWith =>
      CopyWith$Query$GetMember$org$us(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMember$org$us<TRes> {
  factory CopyWith$Query$GetMember$org$us(
    Query$GetMember$org$us instance,
    TRes Function(Query$GetMember$org$us) then,
  ) = _CopyWithImpl$Query$GetMember$org$us;

  factory CopyWith$Query$GetMember$org$us.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMember$org$us;

  TRes call({
    Query$GetMember$org$us$members? members,
    String? $__typename,
  });
  CopyWith$Query$GetMember$org$us$members<TRes> get members;
}

class _CopyWithImpl$Query$GetMember$org$us<TRes>
    implements CopyWith$Query$GetMember$org$us<TRes> {
  _CopyWithImpl$Query$GetMember$org$us(
    this._instance,
    this._then,
  );

  final Query$GetMember$org$us _instance;

  final TRes Function(Query$GetMember$org$us) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? members = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMember$org$us(
        members: members == _undefined || members == null
            ? _instance.members
            : (members as Query$GetMember$org$us$members),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMember$org$us$members<TRes> get members {
    final local$members = _instance.members;
    return CopyWith$Query$GetMember$org$us$members(
        local$members, (e) => call(members: e));
  }
}

class _CopyWithStubImpl$Query$GetMember$org$us<TRes>
    implements CopyWith$Query$GetMember$org$us<TRes> {
  _CopyWithStubImpl$Query$GetMember$org$us(this._res);

  TRes _res;

  call({
    Query$GetMember$org$us$members? members,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMember$org$us$members<TRes> get members =>
      CopyWith$Query$GetMember$org$us$members.stub(_res);
}

class Query$GetMember$org$us$members {
  Query$GetMember$org$us$members({
    required this.items,
    required this.pageInfo,
    this.$__typename = 'MemberConnection',
  });

  factory Query$GetMember$org$us$members.fromJson(Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetMember$org$us$members(
      items: (l$items as List<dynamic>)
          .map((e) => Fragment$Member.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Member> items;

  final Fragment$PageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$items.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMember$org$us$members ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items.length != lOther$items.length) {
      return false;
    }
    for (int i = 0; i < l$items.length; i++) {
      final l$items$entry = l$items[i];
      final lOther$items$entry = lOther$items[i];
      if (l$items$entry != lOther$items$entry) {
        return false;
      }
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMember$org$us$members
    on Query$GetMember$org$us$members {
  CopyWith$Query$GetMember$org$us$members<Query$GetMember$org$us$members>
      get copyWith => CopyWith$Query$GetMember$org$us$members(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMember$org$us$members<TRes> {
  factory CopyWith$Query$GetMember$org$us$members(
    Query$GetMember$org$us$members instance,
    TRes Function(Query$GetMember$org$us$members) then,
  ) = _CopyWithImpl$Query$GetMember$org$us$members;

  factory CopyWith$Query$GetMember$org$us$members.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMember$org$us$members;

  TRes call({
    List<Fragment$Member>? items,
    Fragment$PageInfo? pageInfo,
    String? $__typename,
  });
  TRes items(
      Iterable<Fragment$Member> Function(
              Iterable<CopyWith$Fragment$Member<Fragment$Member>>)
          _fn);
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetMember$org$us$members<TRes>
    implements CopyWith$Query$GetMember$org$us$members<TRes> {
  _CopyWithImpl$Query$GetMember$org$us$members(
    this._instance,
    this._then,
  );

  final Query$GetMember$org$us$members _instance;

  final TRes Function(Query$GetMember$org$us$members) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMember$org$us$members(
        items: items == _undefined || items == null
            ? _instance.items
            : (items as List<Fragment$Member>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes items(
          Iterable<Fragment$Member> Function(
                  Iterable<CopyWith$Fragment$Member<Fragment$Member>>)
              _fn) =>
      call(
          items: _fn(_instance.items.map((e) => CopyWith$Fragment$Member(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetMember$org$us$members<TRes>
    implements CopyWith$Query$GetMember$org$us$members<TRes> {
  _CopyWithStubImpl$Query$GetMember$org$us$members(this._res);

  TRes _res;

  call({
    List<Fragment$Member>? items,
    Fragment$PageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  items(_fn) => _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
}

class Variables$Query$GetMembers {
  factory Variables$Query$GetMembers({Input$PaginationInput? pagination}) =>
      Variables$Query$GetMembers._({
        if (pagination != null) r'pagination': pagination,
      });

  Variables$Query$GetMembers._(this._$data);

  factory Variables$Query$GetMembers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('pagination')) {
      final l$pagination = data['pagination'];
      result$data['pagination'] = l$pagination == null
          ? null
          : Input$PaginationInput.fromJson(
              (l$pagination as Map<String, dynamic>));
    }
    return Variables$Query$GetMembers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PaginationInput? get pagination =>
      (_$data['pagination'] as Input$PaginationInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('pagination')) {
      final l$pagination = pagination;
      result$data['pagination'] = l$pagination?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetMembers<Variables$Query$GetMembers>
      get copyWith => CopyWith$Variables$Query$GetMembers(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetMembers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pagination = pagination;
    final lOther$pagination = other.pagination;
    if (_$data.containsKey('pagination') !=
        other._$data.containsKey('pagination')) {
      return false;
    }
    if (l$pagination != lOther$pagination) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$pagination = pagination;
    return Object.hashAll(
        [_$data.containsKey('pagination') ? l$pagination : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetMembers<TRes> {
  factory CopyWith$Variables$Query$GetMembers(
    Variables$Query$GetMembers instance,
    TRes Function(Variables$Query$GetMembers) then,
  ) = _CopyWithImpl$Variables$Query$GetMembers;

  factory CopyWith$Variables$Query$GetMembers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMembers;

  TRes call({Input$PaginationInput? pagination});
}

class _CopyWithImpl$Variables$Query$GetMembers<TRes>
    implements CopyWith$Variables$Query$GetMembers<TRes> {
  _CopyWithImpl$Variables$Query$GetMembers(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMembers _instance;

  final TRes Function(Variables$Query$GetMembers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? pagination = _undefined}) =>
      _then(Variables$Query$GetMembers._({
        ..._instance._$data,
        if (pagination != _undefined)
          'pagination': (pagination as Input$PaginationInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetMembers<TRes>
    implements CopyWith$Variables$Query$GetMembers<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMembers(this._res);

  TRes _res;

  call({Input$PaginationInput? pagination}) => _res;
}

class Query$GetMembers {
  Query$GetMembers({
    required this.org,
    this.$__typename = 'Query',
  });

  factory Query$GetMembers.fromJson(Map<String, dynamic> json) {
    final l$org = json['org'];
    final l$$__typename = json['__typename'];
    return Query$GetMembers(
      org: Query$GetMembers$org.fromJson((l$org as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMembers$org org;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$org = org;
    _resultData['org'] = l$org.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$org = org;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$org,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMembers || runtimeType != other.runtimeType) {
      return false;
    }
    final l$org = org;
    final lOther$org = other.org;
    if (l$org != lOther$org) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMembers on Query$GetMembers {
  CopyWith$Query$GetMembers<Query$GetMembers> get copyWith =>
      CopyWith$Query$GetMembers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMembers<TRes> {
  factory CopyWith$Query$GetMembers(
    Query$GetMembers instance,
    TRes Function(Query$GetMembers) then,
  ) = _CopyWithImpl$Query$GetMembers;

  factory CopyWith$Query$GetMembers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMembers;

  TRes call({
    Query$GetMembers$org? org,
    String? $__typename,
  });
  CopyWith$Query$GetMembers$org<TRes> get org;
}

class _CopyWithImpl$Query$GetMembers<TRes>
    implements CopyWith$Query$GetMembers<TRes> {
  _CopyWithImpl$Query$GetMembers(
    this._instance,
    this._then,
  );

  final Query$GetMembers _instance;

  final TRes Function(Query$GetMembers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? org = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMembers(
        org: org == _undefined || org == null
            ? _instance.org
            : (org as Query$GetMembers$org),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMembers$org<TRes> get org {
    final local$org = _instance.org;
    return CopyWith$Query$GetMembers$org(local$org, (e) => call(org: e));
  }
}

class _CopyWithStubImpl$Query$GetMembers<TRes>
    implements CopyWith$Query$GetMembers<TRes> {
  _CopyWithStubImpl$Query$GetMembers(this._res);

  TRes _res;

  call({
    Query$GetMembers$org? org,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMembers$org<TRes> get org =>
      CopyWith$Query$GetMembers$org.stub(_res);
}

const documentNodeQueryGetMembers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMembers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pagination')),
        type: NamedTypeNode(
          name: NameNode(value: 'PaginationInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'org'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'us'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'members'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'pagination'),
                    value: VariableNode(name: NameNode(value: 'pagination')),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'items'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Member'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'pageInfo'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PageInfo'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionMember,
  fragmentDefinitionPublicUser,
  fragmentDefinitionPageInfo,
]);
Query$GetMembers _parserFn$Query$GetMembers(Map<String, dynamic> data) =>
    Query$GetMembers.fromJson(data);
typedef OnQueryComplete$Query$GetMembers = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMembers?,
);

class Options$Query$GetMembers extends graphql.QueryOptions<Query$GetMembers> {
  Options$Query$GetMembers({
    String? operationName,
    Variables$Query$GetMembers? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMembers? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMembers? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetMembers(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMembers,
          parserFn: _parserFn$Query$GetMembers,
        );

  final OnQueryComplete$Query$GetMembers? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMembers
    extends graphql.WatchQueryOptions<Query$GetMembers> {
  WatchOptions$Query$GetMembers({
    String? operationName,
    Variables$Query$GetMembers? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMembers? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetMembers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMembers,
        );
}

class FetchMoreOptions$Query$GetMembers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMembers({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetMembers? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetMembers,
        );
}

extension ClientExtension$Query$GetMembers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMembers>> query$GetMembers(
          [Options$Query$GetMembers? options]) async =>
      await this.query(options ?? Options$Query$GetMembers());
  graphql.ObservableQuery<Query$GetMembers> watchQuery$GetMembers(
          [WatchOptions$Query$GetMembers? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetMembers());
  void writeQuery$GetMembers({
    required Query$GetMembers data,
    Variables$Query$GetMembers? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetMembers),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMembers? readQuery$GetMembers({
    Variables$Query$GetMembers? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetMembers),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMembers.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMembers> useQuery$GetMembers(
        [Options$Query$GetMembers? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetMembers());
graphql.ObservableQuery<Query$GetMembers> useWatchQuery$GetMembers(
        [WatchOptions$Query$GetMembers? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetMembers());

class Query$GetMembers$Widget extends graphql_flutter.Query<Query$GetMembers> {
  Query$GetMembers$Widget({
    widgets.Key? key,
    Options$Query$GetMembers? options,
    required graphql_flutter.QueryBuilder<Query$GetMembers> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMembers(),
          builder: builder,
        );
}

class Query$GetMembers$org {
  Query$GetMembers$org({
    required this.us,
    this.$__typename = 'OrgQuery',
  });

  factory Query$GetMembers$org.fromJson(Map<String, dynamic> json) {
    final l$us = json['us'];
    final l$$__typename = json['__typename'];
    return Query$GetMembers$org(
      us: Query$GetMembers$org$us.fromJson((l$us as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMembers$org$us us;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$us = us;
    _resultData['us'] = l$us.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$us = us;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$us,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMembers$org || runtimeType != other.runtimeType) {
      return false;
    }
    final l$us = us;
    final lOther$us = other.us;
    if (l$us != lOther$us) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMembers$org on Query$GetMembers$org {
  CopyWith$Query$GetMembers$org<Query$GetMembers$org> get copyWith =>
      CopyWith$Query$GetMembers$org(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMembers$org<TRes> {
  factory CopyWith$Query$GetMembers$org(
    Query$GetMembers$org instance,
    TRes Function(Query$GetMembers$org) then,
  ) = _CopyWithImpl$Query$GetMembers$org;

  factory CopyWith$Query$GetMembers$org.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMembers$org;

  TRes call({
    Query$GetMembers$org$us? us,
    String? $__typename,
  });
  CopyWith$Query$GetMembers$org$us<TRes> get us;
}

class _CopyWithImpl$Query$GetMembers$org<TRes>
    implements CopyWith$Query$GetMembers$org<TRes> {
  _CopyWithImpl$Query$GetMembers$org(
    this._instance,
    this._then,
  );

  final Query$GetMembers$org _instance;

  final TRes Function(Query$GetMembers$org) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? us = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMembers$org(
        us: us == _undefined || us == null
            ? _instance.us
            : (us as Query$GetMembers$org$us),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMembers$org$us<TRes> get us {
    final local$us = _instance.us;
    return CopyWith$Query$GetMembers$org$us(local$us, (e) => call(us: e));
  }
}

class _CopyWithStubImpl$Query$GetMembers$org<TRes>
    implements CopyWith$Query$GetMembers$org<TRes> {
  _CopyWithStubImpl$Query$GetMembers$org(this._res);

  TRes _res;

  call({
    Query$GetMembers$org$us? us,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMembers$org$us<TRes> get us =>
      CopyWith$Query$GetMembers$org$us.stub(_res);
}

class Query$GetMembers$org$us {
  Query$GetMembers$org$us({
    required this.members,
    this.$__typename = 'Organization',
  });

  factory Query$GetMembers$org$us.fromJson(Map<String, dynamic> json) {
    final l$members = json['members'];
    final l$$__typename = json['__typename'];
    return Query$GetMembers$org$us(
      members: Query$GetMembers$org$us$members.fromJson(
          (l$members as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMembers$org$us$members members;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$members = members;
    _resultData['members'] = l$members.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$members = members;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$members,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMembers$org$us || runtimeType != other.runtimeType) {
      return false;
    }
    final l$members = members;
    final lOther$members = other.members;
    if (l$members != lOther$members) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMembers$org$us on Query$GetMembers$org$us {
  CopyWith$Query$GetMembers$org$us<Query$GetMembers$org$us> get copyWith =>
      CopyWith$Query$GetMembers$org$us(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMembers$org$us<TRes> {
  factory CopyWith$Query$GetMembers$org$us(
    Query$GetMembers$org$us instance,
    TRes Function(Query$GetMembers$org$us) then,
  ) = _CopyWithImpl$Query$GetMembers$org$us;

  factory CopyWith$Query$GetMembers$org$us.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMembers$org$us;

  TRes call({
    Query$GetMembers$org$us$members? members,
    String? $__typename,
  });
  CopyWith$Query$GetMembers$org$us$members<TRes> get members;
}

class _CopyWithImpl$Query$GetMembers$org$us<TRes>
    implements CopyWith$Query$GetMembers$org$us<TRes> {
  _CopyWithImpl$Query$GetMembers$org$us(
    this._instance,
    this._then,
  );

  final Query$GetMembers$org$us _instance;

  final TRes Function(Query$GetMembers$org$us) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? members = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMembers$org$us(
        members: members == _undefined || members == null
            ? _instance.members
            : (members as Query$GetMembers$org$us$members),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMembers$org$us$members<TRes> get members {
    final local$members = _instance.members;
    return CopyWith$Query$GetMembers$org$us$members(
        local$members, (e) => call(members: e));
  }
}

class _CopyWithStubImpl$Query$GetMembers$org$us<TRes>
    implements CopyWith$Query$GetMembers$org$us<TRes> {
  _CopyWithStubImpl$Query$GetMembers$org$us(this._res);

  TRes _res;

  call({
    Query$GetMembers$org$us$members? members,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMembers$org$us$members<TRes> get members =>
      CopyWith$Query$GetMembers$org$us$members.stub(_res);
}

class Query$GetMembers$org$us$members {
  Query$GetMembers$org$us$members({
    required this.items,
    required this.pageInfo,
    this.$__typename = 'MemberConnection',
  });

  factory Query$GetMembers$org$us$members.fromJson(Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetMembers$org$us$members(
      items: (l$items as List<dynamic>)
          .map((e) => Fragment$Member.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Member> items;

  final Fragment$PageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$items.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMembers$org$us$members ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items.length != lOther$items.length) {
      return false;
    }
    for (int i = 0; i < l$items.length; i++) {
      final l$items$entry = l$items[i];
      final lOther$items$entry = lOther$items[i];
      if (l$items$entry != lOther$items$entry) {
        return false;
      }
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetMembers$org$us$members
    on Query$GetMembers$org$us$members {
  CopyWith$Query$GetMembers$org$us$members<Query$GetMembers$org$us$members>
      get copyWith => CopyWith$Query$GetMembers$org$us$members(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMembers$org$us$members<TRes> {
  factory CopyWith$Query$GetMembers$org$us$members(
    Query$GetMembers$org$us$members instance,
    TRes Function(Query$GetMembers$org$us$members) then,
  ) = _CopyWithImpl$Query$GetMembers$org$us$members;

  factory CopyWith$Query$GetMembers$org$us$members.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMembers$org$us$members;

  TRes call({
    List<Fragment$Member>? items,
    Fragment$PageInfo? pageInfo,
    String? $__typename,
  });
  TRes items(
      Iterable<Fragment$Member> Function(
              Iterable<CopyWith$Fragment$Member<Fragment$Member>>)
          _fn);
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetMembers$org$us$members<TRes>
    implements CopyWith$Query$GetMembers$org$us$members<TRes> {
  _CopyWithImpl$Query$GetMembers$org$us$members(
    this._instance,
    this._then,
  );

  final Query$GetMembers$org$us$members _instance;

  final TRes Function(Query$GetMembers$org$us$members) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMembers$org$us$members(
        items: items == _undefined || items == null
            ? _instance.items
            : (items as List<Fragment$Member>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes items(
          Iterable<Fragment$Member> Function(
                  Iterable<CopyWith$Fragment$Member<Fragment$Member>>)
              _fn) =>
      call(
          items: _fn(_instance.items.map((e) => CopyWith$Fragment$Member(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetMembers$org$us$members<TRes>
    implements CopyWith$Query$GetMembers$org$us$members<TRes> {
  _CopyWithStubImpl$Query$GetMembers$org$us$members(this._res);

  TRes _res;

  call({
    List<Fragment$Member>? items,
    Fragment$PageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  items(_fn) => _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
}

class Query$GetOrg {
  Query$GetOrg({
    required this.org,
    this.$__typename = 'Query',
  });

  factory Query$GetOrg.fromJson(Map<String, dynamic> json) {
    final l$org = json['org'];
    final l$$__typename = json['__typename'];
    return Query$GetOrg(
      org: Query$GetOrg$org.fromJson((l$org as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetOrg$org org;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$org = org;
    _resultData['org'] = l$org.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$org = org;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$org,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetOrg || runtimeType != other.runtimeType) {
      return false;
    }
    final l$org = org;
    final lOther$org = other.org;
    if (l$org != lOther$org) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetOrg on Query$GetOrg {
  CopyWith$Query$GetOrg<Query$GetOrg> get copyWith => CopyWith$Query$GetOrg(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetOrg<TRes> {
  factory CopyWith$Query$GetOrg(
    Query$GetOrg instance,
    TRes Function(Query$GetOrg) then,
  ) = _CopyWithImpl$Query$GetOrg;

  factory CopyWith$Query$GetOrg.stub(TRes res) = _CopyWithStubImpl$Query$GetOrg;

  TRes call({
    Query$GetOrg$org? org,
    String? $__typename,
  });
  CopyWith$Query$GetOrg$org<TRes> get org;
}

class _CopyWithImpl$Query$GetOrg<TRes> implements CopyWith$Query$GetOrg<TRes> {
  _CopyWithImpl$Query$GetOrg(
    this._instance,
    this._then,
  );

  final Query$GetOrg _instance;

  final TRes Function(Query$GetOrg) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? org = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetOrg(
        org: org == _undefined || org == null
            ? _instance.org
            : (org as Query$GetOrg$org),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetOrg$org<TRes> get org {
    final local$org = _instance.org;
    return CopyWith$Query$GetOrg$org(local$org, (e) => call(org: e));
  }
}

class _CopyWithStubImpl$Query$GetOrg<TRes>
    implements CopyWith$Query$GetOrg<TRes> {
  _CopyWithStubImpl$Query$GetOrg(this._res);

  TRes _res;

  call({
    Query$GetOrg$org? org,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetOrg$org<TRes> get org =>
      CopyWith$Query$GetOrg$org.stub(_res);
}

const documentNodeQueryGetOrg = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetOrg'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'org'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'us'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MeOrganization'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionMeOrganization,
]);
Query$GetOrg _parserFn$Query$GetOrg(Map<String, dynamic> data) =>
    Query$GetOrg.fromJson(data);
typedef OnQueryComplete$Query$GetOrg = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetOrg?,
);

class Options$Query$GetOrg extends graphql.QueryOptions<Query$GetOrg> {
  Options$Query$GetOrg({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetOrg? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetOrg? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetOrg(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetOrg,
          parserFn: _parserFn$Query$GetOrg,
        );

  final OnQueryComplete$Query$GetOrg? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetOrg
    extends graphql.WatchQueryOptions<Query$GetOrg> {
  WatchOptions$Query$GetOrg({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetOrg? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetOrg,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetOrg,
        );
}

class FetchMoreOptions$Query$GetOrg extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetOrg({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetOrg,
        );
}

extension ClientExtension$Query$GetOrg on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetOrg>> query$GetOrg(
          [Options$Query$GetOrg? options]) async =>
      await this.query(options ?? Options$Query$GetOrg());
  graphql.ObservableQuery<Query$GetOrg> watchQuery$GetOrg(
          [WatchOptions$Query$GetOrg? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetOrg());
  void writeQuery$GetOrg({
    required Query$GetOrg data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetOrg)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetOrg? readQuery$GetOrg({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetOrg)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetOrg.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetOrg> useQuery$GetOrg(
        [Options$Query$GetOrg? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetOrg());
graphql.ObservableQuery<Query$GetOrg> useWatchQuery$GetOrg(
        [WatchOptions$Query$GetOrg? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetOrg());

class Query$GetOrg$Widget extends graphql_flutter.Query<Query$GetOrg> {
  Query$GetOrg$Widget({
    widgets.Key? key,
    Options$Query$GetOrg? options,
    required graphql_flutter.QueryBuilder<Query$GetOrg> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetOrg(),
          builder: builder,
        );
}

class Query$GetOrg$org {
  Query$GetOrg$org({
    required this.us,
    this.$__typename = 'OrgQuery',
  });

  factory Query$GetOrg$org.fromJson(Map<String, dynamic> json) {
    final l$us = json['us'];
    final l$$__typename = json['__typename'];
    return Query$GetOrg$org(
      us: Fragment$MeOrganization.fromJson((l$us as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MeOrganization us;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$us = us;
    _resultData['us'] = l$us.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$us = us;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$us,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetOrg$org || runtimeType != other.runtimeType) {
      return false;
    }
    final l$us = us;
    final lOther$us = other.us;
    if (l$us != lOther$us) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetOrg$org on Query$GetOrg$org {
  CopyWith$Query$GetOrg$org<Query$GetOrg$org> get copyWith =>
      CopyWith$Query$GetOrg$org(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetOrg$org<TRes> {
  factory CopyWith$Query$GetOrg$org(
    Query$GetOrg$org instance,
    TRes Function(Query$GetOrg$org) then,
  ) = _CopyWithImpl$Query$GetOrg$org;

  factory CopyWith$Query$GetOrg$org.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrg$org;

  TRes call({
    Fragment$MeOrganization? us,
    String? $__typename,
  });
  CopyWith$Fragment$MeOrganization<TRes> get us;
}

class _CopyWithImpl$Query$GetOrg$org<TRes>
    implements CopyWith$Query$GetOrg$org<TRes> {
  _CopyWithImpl$Query$GetOrg$org(
    this._instance,
    this._then,
  );

  final Query$GetOrg$org _instance;

  final TRes Function(Query$GetOrg$org) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? us = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetOrg$org(
        us: us == _undefined || us == null
            ? _instance.us
            : (us as Fragment$MeOrganization),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MeOrganization<TRes> get us {
    final local$us = _instance.us;
    return CopyWith$Fragment$MeOrganization(local$us, (e) => call(us: e));
  }
}

class _CopyWithStubImpl$Query$GetOrg$org<TRes>
    implements CopyWith$Query$GetOrg$org<TRes> {
  _CopyWithStubImpl$Query$GetOrg$org(this._res);

  TRes _res;

  call({
    Fragment$MeOrganization? us,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MeOrganization<TRes> get us =>
      CopyWith$Fragment$MeOrganization.stub(_res);
}

class Variables$Query$GetAllOrganizations {
  factory Variables$Query$GetAllOrganizations(
          {Input$PaginationInput? pagination}) =>
      Variables$Query$GetAllOrganizations._({
        if (pagination != null) r'pagination': pagination,
      });

  Variables$Query$GetAllOrganizations._(this._$data);

  factory Variables$Query$GetAllOrganizations.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('pagination')) {
      final l$pagination = data['pagination'];
      result$data['pagination'] = l$pagination == null
          ? null
          : Input$PaginationInput.fromJson(
              (l$pagination as Map<String, dynamic>));
    }
    return Variables$Query$GetAllOrganizations._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PaginationInput? get pagination =>
      (_$data['pagination'] as Input$PaginationInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('pagination')) {
      final l$pagination = pagination;
      result$data['pagination'] = l$pagination?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAllOrganizations<
          Variables$Query$GetAllOrganizations>
      get copyWith => CopyWith$Variables$Query$GetAllOrganizations(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAllOrganizations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pagination = pagination;
    final lOther$pagination = other.pagination;
    if (_$data.containsKey('pagination') !=
        other._$data.containsKey('pagination')) {
      return false;
    }
    if (l$pagination != lOther$pagination) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$pagination = pagination;
    return Object.hashAll(
        [_$data.containsKey('pagination') ? l$pagination : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetAllOrganizations<TRes> {
  factory CopyWith$Variables$Query$GetAllOrganizations(
    Variables$Query$GetAllOrganizations instance,
    TRes Function(Variables$Query$GetAllOrganizations) then,
  ) = _CopyWithImpl$Variables$Query$GetAllOrganizations;

  factory CopyWith$Variables$Query$GetAllOrganizations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllOrganizations;

  TRes call({Input$PaginationInput? pagination});
}

class _CopyWithImpl$Variables$Query$GetAllOrganizations<TRes>
    implements CopyWith$Variables$Query$GetAllOrganizations<TRes> {
  _CopyWithImpl$Variables$Query$GetAllOrganizations(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllOrganizations _instance;

  final TRes Function(Variables$Query$GetAllOrganizations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? pagination = _undefined}) =>
      _then(Variables$Query$GetAllOrganizations._({
        ..._instance._$data,
        if (pagination != _undefined)
          'pagination': (pagination as Input$PaginationInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllOrganizations<TRes>
    implements CopyWith$Variables$Query$GetAllOrganizations<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllOrganizations(this._res);

  TRes _res;

  call({Input$PaginationInput? pagination}) => _res;
}

class Query$GetAllOrganizations {
  Query$GetAllOrganizations({
    required this.org,
    this.$__typename = 'Query',
  });

  factory Query$GetAllOrganizations.fromJson(Map<String, dynamic> json) {
    final l$org = json['org'];
    final l$$__typename = json['__typename'];
    return Query$GetAllOrganizations(
      org: Query$GetAllOrganizations$org.fromJson(
          (l$org as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllOrganizations$org org;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$org = org;
    _resultData['org'] = l$org.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$org = org;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$org,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllOrganizations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$org = org;
    final lOther$org = other.org;
    if (l$org != lOther$org) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllOrganizations
    on Query$GetAllOrganizations {
  CopyWith$Query$GetAllOrganizations<Query$GetAllOrganizations> get copyWith =>
      CopyWith$Query$GetAllOrganizations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllOrganizations<TRes> {
  factory CopyWith$Query$GetAllOrganizations(
    Query$GetAllOrganizations instance,
    TRes Function(Query$GetAllOrganizations) then,
  ) = _CopyWithImpl$Query$GetAllOrganizations;

  factory CopyWith$Query$GetAllOrganizations.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllOrganizations;

  TRes call({
    Query$GetAllOrganizations$org? org,
    String? $__typename,
  });
  CopyWith$Query$GetAllOrganizations$org<TRes> get org;
}

class _CopyWithImpl$Query$GetAllOrganizations<TRes>
    implements CopyWith$Query$GetAllOrganizations<TRes> {
  _CopyWithImpl$Query$GetAllOrganizations(
    this._instance,
    this._then,
  );

  final Query$GetAllOrganizations _instance;

  final TRes Function(Query$GetAllOrganizations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? org = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllOrganizations(
        org: org == _undefined || org == null
            ? _instance.org
            : (org as Query$GetAllOrganizations$org),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAllOrganizations$org<TRes> get org {
    final local$org = _instance.org;
    return CopyWith$Query$GetAllOrganizations$org(
        local$org, (e) => call(org: e));
  }
}

class _CopyWithStubImpl$Query$GetAllOrganizations<TRes>
    implements CopyWith$Query$GetAllOrganizations<TRes> {
  _CopyWithStubImpl$Query$GetAllOrganizations(this._res);

  TRes _res;

  call({
    Query$GetAllOrganizations$org? org,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAllOrganizations$org<TRes> get org =>
      CopyWith$Query$GetAllOrganizations$org.stub(_res);
}

const documentNodeQueryGetAllOrganizations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllOrganizations'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pagination')),
        type: NamedTypeNode(
          name: NameNode(value: 'PaginationInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'org'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'my_memberships'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'pagination'),
                value: VariableNode(name: NameNode(value: 'pagination')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'items'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'TempMembership'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'PageInfo'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionTempMembership,
  fragmentDefinitionPageInfo,
]);
Query$GetAllOrganizations _parserFn$Query$GetAllOrganizations(
        Map<String, dynamic> data) =>
    Query$GetAllOrganizations.fromJson(data);
typedef OnQueryComplete$Query$GetAllOrganizations = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllOrganizations?,
);

class Options$Query$GetAllOrganizations
    extends graphql.QueryOptions<Query$GetAllOrganizations> {
  Options$Query$GetAllOrganizations({
    String? operationName,
    Variables$Query$GetAllOrganizations? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllOrganizations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllOrganizations? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$GetAllOrganizations(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllOrganizations,
          parserFn: _parserFn$Query$GetAllOrganizations,
        );

  final OnQueryComplete$Query$GetAllOrganizations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllOrganizations
    extends graphql.WatchQueryOptions<Query$GetAllOrganizations> {
  WatchOptions$Query$GetAllOrganizations({
    String? operationName,
    Variables$Query$GetAllOrganizations? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllOrganizations? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetAllOrganizations,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllOrganizations,
        );
}

class FetchMoreOptions$Query$GetAllOrganizations
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllOrganizations({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllOrganizations? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllOrganizations,
        );
}

extension ClientExtension$Query$GetAllOrganizations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllOrganizations>>
      query$GetAllOrganizations(
              [Options$Query$GetAllOrganizations? options]) async =>
          await this.query(options ?? Options$Query$GetAllOrganizations());
  graphql.ObservableQuery<Query$GetAllOrganizations>
      watchQuery$GetAllOrganizations(
              [WatchOptions$Query$GetAllOrganizations? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetAllOrganizations());
  void writeQuery$GetAllOrganizations({
    required Query$GetAllOrganizations data,
    Variables$Query$GetAllOrganizations? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAllOrganizations),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllOrganizations? readQuery$GetAllOrganizations({
    Variables$Query$GetAllOrganizations? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetAllOrganizations),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllOrganizations.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllOrganizations>
    useQuery$GetAllOrganizations(
            [Options$Query$GetAllOrganizations? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAllOrganizations());
graphql.ObservableQuery<Query$GetAllOrganizations>
    useWatchQuery$GetAllOrganizations(
            [WatchOptions$Query$GetAllOrganizations? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetAllOrganizations());

class Query$GetAllOrganizations$Widget
    extends graphql_flutter.Query<Query$GetAllOrganizations> {
  Query$GetAllOrganizations$Widget({
    widgets.Key? key,
    Options$Query$GetAllOrganizations? options,
    required graphql_flutter.QueryBuilder<Query$GetAllOrganizations> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllOrganizations(),
          builder: builder,
        );
}

class Query$GetAllOrganizations$org {
  Query$GetAllOrganizations$org({
    required this.my_memberships,
    this.$__typename = 'OrgQuery',
  });

  factory Query$GetAllOrganizations$org.fromJson(Map<String, dynamic> json) {
    final l$my_memberships = json['my_memberships'];
    final l$$__typename = json['__typename'];
    return Query$GetAllOrganizations$org(
      my_memberships: Query$GetAllOrganizations$org$my_memberships.fromJson(
          (l$my_memberships as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllOrganizations$org$my_memberships my_memberships;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$my_memberships = my_memberships;
    _resultData['my_memberships'] = l$my_memberships.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$my_memberships = my_memberships;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$my_memberships,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllOrganizations$org ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$my_memberships = my_memberships;
    final lOther$my_memberships = other.my_memberships;
    if (l$my_memberships != lOther$my_memberships) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllOrganizations$org
    on Query$GetAllOrganizations$org {
  CopyWith$Query$GetAllOrganizations$org<Query$GetAllOrganizations$org>
      get copyWith => CopyWith$Query$GetAllOrganizations$org(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllOrganizations$org<TRes> {
  factory CopyWith$Query$GetAllOrganizations$org(
    Query$GetAllOrganizations$org instance,
    TRes Function(Query$GetAllOrganizations$org) then,
  ) = _CopyWithImpl$Query$GetAllOrganizations$org;

  factory CopyWith$Query$GetAllOrganizations$org.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllOrganizations$org;

  TRes call({
    Query$GetAllOrganizations$org$my_memberships? my_memberships,
    String? $__typename,
  });
  CopyWith$Query$GetAllOrganizations$org$my_memberships<TRes>
      get my_memberships;
}

class _CopyWithImpl$Query$GetAllOrganizations$org<TRes>
    implements CopyWith$Query$GetAllOrganizations$org<TRes> {
  _CopyWithImpl$Query$GetAllOrganizations$org(
    this._instance,
    this._then,
  );

  final Query$GetAllOrganizations$org _instance;

  final TRes Function(Query$GetAllOrganizations$org) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? my_memberships = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllOrganizations$org(
        my_memberships: my_memberships == _undefined || my_memberships == null
            ? _instance.my_memberships
            : (my_memberships as Query$GetAllOrganizations$org$my_memberships),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAllOrganizations$org$my_memberships<TRes>
      get my_memberships {
    final local$my_memberships = _instance.my_memberships;
    return CopyWith$Query$GetAllOrganizations$org$my_memberships(
        local$my_memberships, (e) => call(my_memberships: e));
  }
}

class _CopyWithStubImpl$Query$GetAllOrganizations$org<TRes>
    implements CopyWith$Query$GetAllOrganizations$org<TRes> {
  _CopyWithStubImpl$Query$GetAllOrganizations$org(this._res);

  TRes _res;

  call({
    Query$GetAllOrganizations$org$my_memberships? my_memberships,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAllOrganizations$org$my_memberships<TRes>
      get my_memberships =>
          CopyWith$Query$GetAllOrganizations$org$my_memberships.stub(_res);
}

class Query$GetAllOrganizations$org$my_memberships {
  Query$GetAllOrganizations$org$my_memberships({
    required this.items,
    required this.pageInfo,
    this.$__typename = 'TempMembershipConnection',
  });

  factory Query$GetAllOrganizations$org$my_memberships.fromJson(
      Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetAllOrganizations$org$my_memberships(
      items: (l$items as List<dynamic>)
          .map((e) =>
              Fragment$TempMembership.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$TempMembership> items;

  final Fragment$PageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$items.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllOrganizations$org$my_memberships ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items.length != lOther$items.length) {
      return false;
    }
    for (int i = 0; i < l$items.length; i++) {
      final l$items$entry = l$items[i];
      final lOther$items$entry = lOther$items[i];
      if (l$items$entry != lOther$items$entry) {
        return false;
      }
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllOrganizations$org$my_memberships
    on Query$GetAllOrganizations$org$my_memberships {
  CopyWith$Query$GetAllOrganizations$org$my_memberships<
          Query$GetAllOrganizations$org$my_memberships>
      get copyWith => CopyWith$Query$GetAllOrganizations$org$my_memberships(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllOrganizations$org$my_memberships<TRes> {
  factory CopyWith$Query$GetAllOrganizations$org$my_memberships(
    Query$GetAllOrganizations$org$my_memberships instance,
    TRes Function(Query$GetAllOrganizations$org$my_memberships) then,
  ) = _CopyWithImpl$Query$GetAllOrganizations$org$my_memberships;

  factory CopyWith$Query$GetAllOrganizations$org$my_memberships.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllOrganizations$org$my_memberships;

  TRes call({
    List<Fragment$TempMembership>? items,
    Fragment$PageInfo? pageInfo,
    String? $__typename,
  });
  TRes items(
      Iterable<Fragment$TempMembership> Function(
              Iterable<
                  CopyWith$Fragment$TempMembership<Fragment$TempMembership>>)
          _fn);
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetAllOrganizations$org$my_memberships<TRes>
    implements CopyWith$Query$GetAllOrganizations$org$my_memberships<TRes> {
  _CopyWithImpl$Query$GetAllOrganizations$org$my_memberships(
    this._instance,
    this._then,
  );

  final Query$GetAllOrganizations$org$my_memberships _instance;

  final TRes Function(Query$GetAllOrganizations$org$my_memberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllOrganizations$org$my_memberships(
        items: items == _undefined || items == null
            ? _instance.items
            : (items as List<Fragment$TempMembership>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes items(
          Iterable<Fragment$TempMembership> Function(
                  Iterable<
                      CopyWith$Fragment$TempMembership<
                          Fragment$TempMembership>>)
              _fn) =>
      call(
          items:
              _fn(_instance.items.map((e) => CopyWith$Fragment$TempMembership(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetAllOrganizations$org$my_memberships<TRes>
    implements CopyWith$Query$GetAllOrganizations$org$my_memberships<TRes> {
  _CopyWithStubImpl$Query$GetAllOrganizations$org$my_memberships(this._res);

  TRes _res;

  call({
    List<Fragment$TempMembership>? items,
    Fragment$PageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  items(_fn) => _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
}
