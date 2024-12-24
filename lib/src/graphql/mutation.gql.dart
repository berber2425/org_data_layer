import '../schema.graphqls.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$CreateOrg {
  factory Variables$Mutation$CreateOrg({required Input$CreateOrgInput input}) =>
      Variables$Mutation$CreateOrg._({
        r'input': input,
      });

  Variables$Mutation$CreateOrg._(this._$data);

  factory Variables$Mutation$CreateOrg.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CreateOrgInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateOrg._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrgInput get input => (_$data['input'] as Input$CreateOrgInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOrg<Variables$Mutation$CreateOrg>
      get copyWith => CopyWith$Variables$Mutation$CreateOrg(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateOrg ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOrg<TRes> {
  factory CopyWith$Variables$Mutation$CreateOrg(
    Variables$Mutation$CreateOrg instance,
    TRes Function(Variables$Mutation$CreateOrg) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOrg;

  factory CopyWith$Variables$Mutation$CreateOrg.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOrg;

  TRes call({Input$CreateOrgInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateOrg<TRes>
    implements CopyWith$Variables$Mutation$CreateOrg<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOrg(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOrg _instance;

  final TRes Function(Variables$Mutation$CreateOrg) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateOrg._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateOrgInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOrg<TRes>
    implements CopyWith$Variables$Mutation$CreateOrg<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOrg(this._res);

  TRes _res;

  call({Input$CreateOrgInput? input}) => _res;
}

class Mutation$CreateOrg {
  Mutation$CreateOrg({
    required this.org,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOrg.fromJson(Map<String, dynamic> json) {
    final l$org = json['org'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrg(
      org: Mutation$CreateOrg$org.fromJson((l$org as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOrg$org org;

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
    if (other is! Mutation$CreateOrg || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$CreateOrg on Mutation$CreateOrg {
  CopyWith$Mutation$CreateOrg<Mutation$CreateOrg> get copyWith =>
      CopyWith$Mutation$CreateOrg(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOrg<TRes> {
  factory CopyWith$Mutation$CreateOrg(
    Mutation$CreateOrg instance,
    TRes Function(Mutation$CreateOrg) then,
  ) = _CopyWithImpl$Mutation$CreateOrg;

  factory CopyWith$Mutation$CreateOrg.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrg;

  TRes call({
    Mutation$CreateOrg$org? org,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrg$org<TRes> get org;
}

class _CopyWithImpl$Mutation$CreateOrg<TRes>
    implements CopyWith$Mutation$CreateOrg<TRes> {
  _CopyWithImpl$Mutation$CreateOrg(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrg _instance;

  final TRes Function(Mutation$CreateOrg) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? org = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrg(
        org: org == _undefined || org == null
            ? _instance.org
            : (org as Mutation$CreateOrg$org),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateOrg$org<TRes> get org {
    final local$org = _instance.org;
    return CopyWith$Mutation$CreateOrg$org(local$org, (e) => call(org: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrg<TRes>
    implements CopyWith$Mutation$CreateOrg<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrg(this._res);

  TRes _res;

  call({
    Mutation$CreateOrg$org? org,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateOrg$org<TRes> get org =>
      CopyWith$Mutation$CreateOrg$org.stub(_res);
}

const documentNodeMutationCreateOrg = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOrg'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateOrgInput'),
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
            name: NameNode(value: 'createOrg'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
]);
Mutation$CreateOrg _parserFn$Mutation$CreateOrg(Map<String, dynamic> data) =>
    Mutation$CreateOrg.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOrg = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateOrg?,
);

class Options$Mutation$CreateOrg
    extends graphql.MutationOptions<Mutation$CreateOrg> {
  Options$Mutation$CreateOrg({
    String? operationName,
    required Variables$Mutation$CreateOrg variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrg? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrg? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrg>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateOrg(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrg,
          parserFn: _parserFn$Mutation$CreateOrg,
        );

  final OnMutationCompleted$Mutation$CreateOrg? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOrg
    extends graphql.WatchQueryOptions<Mutation$CreateOrg> {
  WatchOptions$Mutation$CreateOrg({
    String? operationName,
    required Variables$Mutation$CreateOrg variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrg? typedOptimisticResult,
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
          document: documentNodeMutationCreateOrg,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOrg,
        );
}

extension ClientExtension$Mutation$CreateOrg on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOrg>> mutate$CreateOrg(
          Options$Mutation$CreateOrg options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOrg> watchMutation$CreateOrg(
          WatchOptions$Mutation$CreateOrg options) =>
      this.watchMutation(options);
}

class Mutation$CreateOrg$HookResult {
  Mutation$CreateOrg$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateOrg runMutation;

  final graphql.QueryResult<Mutation$CreateOrg> result;
}

Mutation$CreateOrg$HookResult useMutation$CreateOrg(
    [WidgetOptions$Mutation$CreateOrg? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateOrg());
  return Mutation$CreateOrg$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateOrg> useWatchMutation$CreateOrg(
        WatchOptions$Mutation$CreateOrg options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateOrg
    extends graphql.MutationOptions<Mutation$CreateOrg> {
  WidgetOptions$Mutation$CreateOrg({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrg? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrg? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrg>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateOrg(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrg,
          parserFn: _parserFn$Mutation$CreateOrg,
        );

  final OnMutationCompleted$Mutation$CreateOrg? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateOrg
    = graphql.MultiSourceResult<Mutation$CreateOrg> Function(
  Variables$Mutation$CreateOrg, {
  Object? optimisticResult,
  Mutation$CreateOrg? typedOptimisticResult,
});
typedef Builder$Mutation$CreateOrg = widgets.Widget Function(
  RunMutation$Mutation$CreateOrg,
  graphql.QueryResult<Mutation$CreateOrg>?,
);

class Mutation$CreateOrg$Widget
    extends graphql_flutter.Mutation<Mutation$CreateOrg> {
  Mutation$CreateOrg$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateOrg? options,
    required Builder$Mutation$CreateOrg builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateOrg(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$CreateOrg$org {
  Mutation$CreateOrg$org({
    required this.createOrg,
    this.$__typename = 'OrgMutation',
  });

  factory Mutation$CreateOrg$org.fromJson(Map<String, dynamic> json) {
    final l$createOrg = json['createOrg'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrg$org(
      createOrg: Mutation$CreateOrg$org$createOrg.fromJson(
          (l$createOrg as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOrg$org$createOrg createOrg;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOrg = createOrg;
    _resultData['createOrg'] = l$createOrg.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOrg = createOrg;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOrg,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateOrg$org || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOrg = createOrg;
    final lOther$createOrg = other.createOrg;
    if (l$createOrg != lOther$createOrg) {
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

extension UtilityExtension$Mutation$CreateOrg$org on Mutation$CreateOrg$org {
  CopyWith$Mutation$CreateOrg$org<Mutation$CreateOrg$org> get copyWith =>
      CopyWith$Mutation$CreateOrg$org(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOrg$org<TRes> {
  factory CopyWith$Mutation$CreateOrg$org(
    Mutation$CreateOrg$org instance,
    TRes Function(Mutation$CreateOrg$org) then,
  ) = _CopyWithImpl$Mutation$CreateOrg$org;

  factory CopyWith$Mutation$CreateOrg$org.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrg$org;

  TRes call({
    Mutation$CreateOrg$org$createOrg? createOrg,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrg$org$createOrg<TRes> get createOrg;
}

class _CopyWithImpl$Mutation$CreateOrg$org<TRes>
    implements CopyWith$Mutation$CreateOrg$org<TRes> {
  _CopyWithImpl$Mutation$CreateOrg$org(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrg$org _instance;

  final TRes Function(Mutation$CreateOrg$org) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOrg = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrg$org(
        createOrg: createOrg == _undefined || createOrg == null
            ? _instance.createOrg
            : (createOrg as Mutation$CreateOrg$org$createOrg),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateOrg$org$createOrg<TRes> get createOrg {
    final local$createOrg = _instance.createOrg;
    return CopyWith$Mutation$CreateOrg$org$createOrg(
        local$createOrg, (e) => call(createOrg: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrg$org<TRes>
    implements CopyWith$Mutation$CreateOrg$org<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrg$org(this._res);

  TRes _res;

  call({
    Mutation$CreateOrg$org$createOrg? createOrg,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateOrg$org$createOrg<TRes> get createOrg =>
      CopyWith$Mutation$CreateOrg$org$createOrg.stub(_res);
}

class Mutation$CreateOrg$org$createOrg {
  Mutation$CreateOrg$org$createOrg({
    required this.id,
    this.$__typename = 'Organization',
  });

  factory Mutation$CreateOrg$org$createOrg.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrg$org$createOrg(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateOrg$org$createOrg ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$CreateOrg$org$createOrg
    on Mutation$CreateOrg$org$createOrg {
  CopyWith$Mutation$CreateOrg$org$createOrg<Mutation$CreateOrg$org$createOrg>
      get copyWith => CopyWith$Mutation$CreateOrg$org$createOrg(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrg$org$createOrg<TRes> {
  factory CopyWith$Mutation$CreateOrg$org$createOrg(
    Mutation$CreateOrg$org$createOrg instance,
    TRes Function(Mutation$CreateOrg$org$createOrg) then,
  ) = _CopyWithImpl$Mutation$CreateOrg$org$createOrg;

  factory CopyWith$Mutation$CreateOrg$org$createOrg.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrg$org$createOrg;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOrg$org$createOrg<TRes>
    implements CopyWith$Mutation$CreateOrg$org$createOrg<TRes> {
  _CopyWithImpl$Mutation$CreateOrg$org$createOrg(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrg$org$createOrg _instance;

  final TRes Function(Mutation$CreateOrg$org$createOrg) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrg$org$createOrg(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOrg$org$createOrg<TRes>
    implements CopyWith$Mutation$CreateOrg$org$createOrg<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrg$org$createOrg(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
