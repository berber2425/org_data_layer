import '../schema.graphqls.dart';
import 'common/fragments.gql.dart';
import 'package:api/api.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$TempMembership {
  Fragment$TempMembership({
    required this.id,
    required this.status,
    required this.role,
    this.branch,
    required this.organization,
    this.$__typename = 'TempMembership',
  });

  factory Fragment$TempMembership.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$role = json['role'];
    final l$branch = json['branch'];
    final l$organization = json['organization'];
    final l$$__typename = json['__typename'];
    return Fragment$TempMembership(
      id: (l$id as String),
      status: fromJson$Enum$MemberStatus((l$status as String)),
      role: Fragment$TempMembership$role.fromJson(
          (l$role as Map<String, dynamic>)),
      branch: l$branch == null
          ? null
          : Fragment$TempMembership$branch.fromJson(
              (l$branch as Map<String, dynamic>)),
      organization: Fragment$TempMembership$organization.fromJson(
          (l$organization as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$MemberStatus status;

  final Fragment$TempMembership$role role;

  final Fragment$TempMembership$branch? branch;

  final Fragment$TempMembership$organization organization;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$MemberStatus(l$status);
    final l$role = role;
    _resultData['role'] = l$role.toJson();
    final l$branch = branch;
    _resultData['branch'] = l$branch?.toJson();
    final l$organization = organization;
    _resultData['organization'] = l$organization.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$role = role;
    final l$branch = branch;
    final l$organization = organization;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$role,
      l$branch,
      l$organization,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TempMembership || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$branch = branch;
    final lOther$branch = other.branch;
    if (l$branch != lOther$branch) {
      return false;
    }
    final l$organization = organization;
    final lOther$organization = other.organization;
    if (l$organization != lOther$organization) {
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

extension UtilityExtension$Fragment$TempMembership on Fragment$TempMembership {
  CopyWith$Fragment$TempMembership<Fragment$TempMembership> get copyWith =>
      CopyWith$Fragment$TempMembership(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TempMembership<TRes> {
  factory CopyWith$Fragment$TempMembership(
    Fragment$TempMembership instance,
    TRes Function(Fragment$TempMembership) then,
  ) = _CopyWithImpl$Fragment$TempMembership;

  factory CopyWith$Fragment$TempMembership.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TempMembership;

  TRes call({
    String? id,
    Enum$MemberStatus? status,
    Fragment$TempMembership$role? role,
    Fragment$TempMembership$branch? branch,
    Fragment$TempMembership$organization? organization,
    String? $__typename,
  });
  CopyWith$Fragment$TempMembership$role<TRes> get role;
  CopyWith$Fragment$TempMembership$branch<TRes> get branch;
  CopyWith$Fragment$TempMembership$organization<TRes> get organization;
}

class _CopyWithImpl$Fragment$TempMembership<TRes>
    implements CopyWith$Fragment$TempMembership<TRes> {
  _CopyWithImpl$Fragment$TempMembership(
    this._instance,
    this._then,
  );

  final Fragment$TempMembership _instance;

  final TRes Function(Fragment$TempMembership) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? role = _undefined,
    Object? branch = _undefined,
    Object? organization = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TempMembership(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$MemberStatus),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Fragment$TempMembership$role),
        branch: branch == _undefined
            ? _instance.branch
            : (branch as Fragment$TempMembership$branch?),
        organization: organization == _undefined || organization == null
            ? _instance.organization
            : (organization as Fragment$TempMembership$organization),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TempMembership$role<TRes> get role {
    final local$role = _instance.role;
    return CopyWith$Fragment$TempMembership$role(
        local$role, (e) => call(role: e));
  }

  CopyWith$Fragment$TempMembership$branch<TRes> get branch {
    final local$branch = _instance.branch;
    return local$branch == null
        ? CopyWith$Fragment$TempMembership$branch.stub(_then(_instance))
        : CopyWith$Fragment$TempMembership$branch(
            local$branch, (e) => call(branch: e));
  }

  CopyWith$Fragment$TempMembership$organization<TRes> get organization {
    final local$organization = _instance.organization;
    return CopyWith$Fragment$TempMembership$organization(
        local$organization, (e) => call(organization: e));
  }
}

class _CopyWithStubImpl$Fragment$TempMembership<TRes>
    implements CopyWith$Fragment$TempMembership<TRes> {
  _CopyWithStubImpl$Fragment$TempMembership(this._res);

  TRes _res;

  call({
    String? id,
    Enum$MemberStatus? status,
    Fragment$TempMembership$role? role,
    Fragment$TempMembership$branch? branch,
    Fragment$TempMembership$organization? organization,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TempMembership$role<TRes> get role =>
      CopyWith$Fragment$TempMembership$role.stub(_res);

  CopyWith$Fragment$TempMembership$branch<TRes> get branch =>
      CopyWith$Fragment$TempMembership$branch.stub(_res);

  CopyWith$Fragment$TempMembership$organization<TRes> get organization =>
      CopyWith$Fragment$TempMembership$organization.stub(_res);
}

const fragmentDefinitionTempMembership = FragmentDefinitionNode(
  name: NameNode(value: 'TempMembership'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'TempMembership'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'role'),
      alias: null,
      arguments: [],
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
          name: NameNode(value: 'name'),
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
      name: NameNode(value: 'branch'),
      alias: null,
      arguments: [],
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
          name: NameNode(value: 'name'),
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
      name: NameNode(value: 'organization'),
      alias: null,
      arguments: [],
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
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'avatar'),
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
);
const documentNodeFragmentTempMembership = DocumentNode(definitions: [
  fragmentDefinitionTempMembership,
]);

extension ClientExtension$Fragment$TempMembership on graphql.GraphQLClient {
  void writeFragment$TempMembership({
    required Fragment$TempMembership data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'TempMembership',
            document: documentNodeFragmentTempMembership,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$TempMembership? readFragment$TempMembership({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'TempMembership',
          document: documentNodeFragmentTempMembership,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$TempMembership.fromJson(result);
  }
}

class Fragment$TempMembership$role {
  Fragment$TempMembership$role({
    required this.id,
    required this.name,
    this.$__typename = 'Role',
  });

  factory Fragment$TempMembership$role.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$TempMembership$role(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TempMembership$role ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$TempMembership$role
    on Fragment$TempMembership$role {
  CopyWith$Fragment$TempMembership$role<Fragment$TempMembership$role>
      get copyWith => CopyWith$Fragment$TempMembership$role(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$TempMembership$role<TRes> {
  factory CopyWith$Fragment$TempMembership$role(
    Fragment$TempMembership$role instance,
    TRes Function(Fragment$TempMembership$role) then,
  ) = _CopyWithImpl$Fragment$TempMembership$role;

  factory CopyWith$Fragment$TempMembership$role.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TempMembership$role;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TempMembership$role<TRes>
    implements CopyWith$Fragment$TempMembership$role<TRes> {
  _CopyWithImpl$Fragment$TempMembership$role(
    this._instance,
    this._then,
  );

  final Fragment$TempMembership$role _instance;

  final TRes Function(Fragment$TempMembership$role) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TempMembership$role(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$TempMembership$role<TRes>
    implements CopyWith$Fragment$TempMembership$role<TRes> {
  _CopyWithStubImpl$Fragment$TempMembership$role(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$TempMembership$branch {
  Fragment$TempMembership$branch({
    required this.id,
    required this.name,
    this.$__typename = 'Branch',
  });

  factory Fragment$TempMembership$branch.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$TempMembership$branch(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TempMembership$branch ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$TempMembership$branch
    on Fragment$TempMembership$branch {
  CopyWith$Fragment$TempMembership$branch<Fragment$TempMembership$branch>
      get copyWith => CopyWith$Fragment$TempMembership$branch(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$TempMembership$branch<TRes> {
  factory CopyWith$Fragment$TempMembership$branch(
    Fragment$TempMembership$branch instance,
    TRes Function(Fragment$TempMembership$branch) then,
  ) = _CopyWithImpl$Fragment$TempMembership$branch;

  factory CopyWith$Fragment$TempMembership$branch.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TempMembership$branch;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TempMembership$branch<TRes>
    implements CopyWith$Fragment$TempMembership$branch<TRes> {
  _CopyWithImpl$Fragment$TempMembership$branch(
    this._instance,
    this._then,
  );

  final Fragment$TempMembership$branch _instance;

  final TRes Function(Fragment$TempMembership$branch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TempMembership$branch(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$TempMembership$branch<TRes>
    implements CopyWith$Fragment$TempMembership$branch<TRes> {
  _CopyWithStubImpl$Fragment$TempMembership$branch(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$TempMembership$organization {
  Fragment$TempMembership$organization({
    required this.id,
    required this.name,
    required this.avatar,
    this.$__typename = 'Organization',
  });

  factory Fragment$TempMembership$organization.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment$TempMembership$organization(
      id: (l$id as String),
      name: (l$name as String),
      avatar: avatarFromJson(l$avatar),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Avatar avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = avatarToJson(l$avatar);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TempMembership$organization ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Fragment$TempMembership$organization
    on Fragment$TempMembership$organization {
  CopyWith$Fragment$TempMembership$organization<
          Fragment$TempMembership$organization>
      get copyWith => CopyWith$Fragment$TempMembership$organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$TempMembership$organization<TRes> {
  factory CopyWith$Fragment$TempMembership$organization(
    Fragment$TempMembership$organization instance,
    TRes Function(Fragment$TempMembership$organization) then,
  ) = _CopyWithImpl$Fragment$TempMembership$organization;

  factory CopyWith$Fragment$TempMembership$organization.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TempMembership$organization;

  TRes call({
    String? id,
    String? name,
    Avatar? avatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TempMembership$organization<TRes>
    implements CopyWith$Fragment$TempMembership$organization<TRes> {
  _CopyWithImpl$Fragment$TempMembership$organization(
    this._instance,
    this._then,
  );

  final Fragment$TempMembership$organization _instance;

  final TRes Function(Fragment$TempMembership$organization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TempMembership$organization(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as Avatar),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$TempMembership$organization<TRes>
    implements CopyWith$Fragment$TempMembership$organization<TRes> {
  _CopyWithStubImpl$Fragment$TempMembership$organization(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Avatar? avatar,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MeOrganization {
  Fragment$MeOrganization({
    required this.id,
    required this.name,
    required this.avatar,
    this.$__typename = 'Organization',
  });

  factory Fragment$MeOrganization.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment$MeOrganization(
      id: (l$id as String),
      name: (l$name as String),
      avatar: avatarFromJson(l$avatar),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Avatar avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = avatarToJson(l$avatar);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MeOrganization || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Fragment$MeOrganization on Fragment$MeOrganization {
  CopyWith$Fragment$MeOrganization<Fragment$MeOrganization> get copyWith =>
      CopyWith$Fragment$MeOrganization(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MeOrganization<TRes> {
  factory CopyWith$Fragment$MeOrganization(
    Fragment$MeOrganization instance,
    TRes Function(Fragment$MeOrganization) then,
  ) = _CopyWithImpl$Fragment$MeOrganization;

  factory CopyWith$Fragment$MeOrganization.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MeOrganization;

  TRes call({
    String? id,
    String? name,
    Avatar? avatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MeOrganization<TRes>
    implements CopyWith$Fragment$MeOrganization<TRes> {
  _CopyWithImpl$Fragment$MeOrganization(
    this._instance,
    this._then,
  );

  final Fragment$MeOrganization _instance;

  final TRes Function(Fragment$MeOrganization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MeOrganization(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined || avatar == null
            ? _instance.avatar
            : (avatar as Avatar),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MeOrganization<TRes>
    implements CopyWith$Fragment$MeOrganization<TRes> {
  _CopyWithStubImpl$Fragment$MeOrganization(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Avatar? avatar,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionMeOrganization = FragmentDefinitionNode(
  name: NameNode(value: 'MeOrganization'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Organization'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'avatar'),
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
);
const documentNodeFragmentMeOrganization = DocumentNode(definitions: [
  fragmentDefinitionMeOrganization,
]);

extension ClientExtension$Fragment$MeOrganization on graphql.GraphQLClient {
  void writeFragment$MeOrganization({
    required Fragment$MeOrganization data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MeOrganization',
            document: documentNodeFragmentMeOrganization,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MeOrganization? readFragment$MeOrganization({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MeOrganization',
          document: documentNodeFragmentMeOrganization,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MeOrganization.fromJson(result);
  }
}

class Fragment$Member {
  Fragment$Member({
    required this.id,
    required this.status,
    this.user,
    this.user_ID,
    required this.role,
    this.branch_ID,
    this.$__typename = 'Member',
  });

  factory Fragment$Member.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$user = json['user'];
    final l$user_ID = json['user_ID'];
    final l$role = json['role'];
    final l$branch_ID = json['branch_ID'];
    final l$$__typename = json['__typename'];
    return Fragment$Member(
      id: (l$id as String),
      status: fromJson$Enum$MemberStatus((l$status as String)),
      user: l$user == null
          ? null
          : Fragment$PublicUser.fromJson((l$user as Map<String, dynamic>)),
      user_ID: (l$user_ID as String?),
      role: Fragment$Member$role.fromJson((l$role as Map<String, dynamic>)),
      branch_ID: (l$branch_ID as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$MemberStatus status;

  final Fragment$PublicUser? user;

  final String? user_ID;

  final Fragment$Member$role role;

  final String? branch_ID;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$MemberStatus(l$status);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$user_ID = user_ID;
    _resultData['user_ID'] = l$user_ID;
    final l$role = role;
    _resultData['role'] = l$role.toJson();
    final l$branch_ID = branch_ID;
    _resultData['branch_ID'] = l$branch_ID;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$user = user;
    final l$user_ID = user_ID;
    final l$role = role;
    final l$branch_ID = branch_ID;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$user,
      l$user_ID,
      l$role,
      l$branch_ID,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Member || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$user_ID = user_ID;
    final lOther$user_ID = other.user_ID;
    if (l$user_ID != lOther$user_ID) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$branch_ID = branch_ID;
    final lOther$branch_ID = other.branch_ID;
    if (l$branch_ID != lOther$branch_ID) {
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

extension UtilityExtension$Fragment$Member on Fragment$Member {
  CopyWith$Fragment$Member<Fragment$Member> get copyWith =>
      CopyWith$Fragment$Member(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Member<TRes> {
  factory CopyWith$Fragment$Member(
    Fragment$Member instance,
    TRes Function(Fragment$Member) then,
  ) = _CopyWithImpl$Fragment$Member;

  factory CopyWith$Fragment$Member.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Member;

  TRes call({
    String? id,
    Enum$MemberStatus? status,
    Fragment$PublicUser? user,
    String? user_ID,
    Fragment$Member$role? role,
    String? branch_ID,
    String? $__typename,
  });
  CopyWith$Fragment$PublicUser<TRes> get user;
  CopyWith$Fragment$Member$role<TRes> get role;
}

class _CopyWithImpl$Fragment$Member<TRes>
    implements CopyWith$Fragment$Member<TRes> {
  _CopyWithImpl$Fragment$Member(
    this._instance,
    this._then,
  );

  final Fragment$Member _instance;

  final TRes Function(Fragment$Member) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? user = _undefined,
    Object? user_ID = _undefined,
    Object? role = _undefined,
    Object? branch_ID = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Member(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$MemberStatus),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$PublicUser?),
        user_ID:
            user_ID == _undefined ? _instance.user_ID : (user_ID as String?),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Fragment$Member$role),
        branch_ID: branch_ID == _undefined
            ? _instance.branch_ID
            : (branch_ID as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PublicUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$PublicUser.stub(_then(_instance))
        : CopyWith$Fragment$PublicUser(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$Member$role<TRes> get role {
    final local$role = _instance.role;
    return CopyWith$Fragment$Member$role(local$role, (e) => call(role: e));
  }
}

class _CopyWithStubImpl$Fragment$Member<TRes>
    implements CopyWith$Fragment$Member<TRes> {
  _CopyWithStubImpl$Fragment$Member(this._res);

  TRes _res;

  call({
    String? id,
    Enum$MemberStatus? status,
    Fragment$PublicUser? user,
    String? user_ID,
    Fragment$Member$role? role,
    String? branch_ID,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PublicUser<TRes> get user =>
      CopyWith$Fragment$PublicUser.stub(_res);

  CopyWith$Fragment$Member$role<TRes> get role =>
      CopyWith$Fragment$Member$role.stub(_res);
}

const fragmentDefinitionMember = FragmentDefinitionNode(
  name: NameNode(value: 'Member'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Member'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'user'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PublicUser'),
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
      name: NameNode(value: 'user_ID'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'role'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'name'),
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
      name: NameNode(value: 'branch_ID'),
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
);
const documentNodeFragmentMember = DocumentNode(definitions: [
  fragmentDefinitionMember,
  fragmentDefinitionPublicUser,
]);

extension ClientExtension$Fragment$Member on graphql.GraphQLClient {
  void writeFragment$Member({
    required Fragment$Member data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Member',
            document: documentNodeFragmentMember,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Member? readFragment$Member({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Member',
          document: documentNodeFragmentMember,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Member.fromJson(result);
  }
}

class Fragment$Member$role {
  Fragment$Member$role({
    required this.name,
    this.$__typename = 'Role',
  });

  factory Fragment$Member$role.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$Member$role(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Member$role || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$Member$role on Fragment$Member$role {
  CopyWith$Fragment$Member$role<Fragment$Member$role> get copyWith =>
      CopyWith$Fragment$Member$role(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Member$role<TRes> {
  factory CopyWith$Fragment$Member$role(
    Fragment$Member$role instance,
    TRes Function(Fragment$Member$role) then,
  ) = _CopyWithImpl$Fragment$Member$role;

  factory CopyWith$Fragment$Member$role.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Member$role;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Member$role<TRes>
    implements CopyWith$Fragment$Member$role<TRes> {
  _CopyWithImpl$Fragment$Member$role(
    this._instance,
    this._then,
  );

  final Fragment$Member$role _instance;

  final TRes Function(Fragment$Member$role) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Member$role(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Member$role<TRes>
    implements CopyWith$Fragment$Member$role<TRes> {
  _CopyWithStubImpl$Fragment$Member$role(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
