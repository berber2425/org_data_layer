import 'package:org_data/src/api/auth.dart';
import 'package:org_data/src/api/mutation.dart';
import 'package:org_data/src/api/query.dart';

class Api {
  static AuthApi get auth => AuthApi();
  static OrgQuery get query => OrgQuery();
  static OrgMutations get mutation => OrgMutations();
}
