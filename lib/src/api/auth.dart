import 'package:api/api.dart';
import 'package:org_data/org_data.dart';
import 'package:org_data/src/graphql/common/mutation.gql.dart';
import 'package:org_data/src/graphql/common/query.gql.dart';

class AuthApi {
  AuthQuery get query => AuthQuery();
  AuthMutations get mutations => AuthMutations();
}

typedef CheckProviderResult = Query$GetProvider$auth$check_provider;
typedef LoginEmailResult = Mutation$login_email$auth$login_email;

class AuthQuery {
  Future<CheckProviderResult> getProvider(String contact) async {
    final res = await client.query$GetProvider(
      Options$Query$GetProvider(
        variables: Variables$Query$GetProvider(contact: contact),
      ),
    );

    return res.parsedData!.auth.check_provider;
  }

  Future<Query$Me$auth$me> me() async {
    final res = await client.query$Me();
    return res.parsedData!.auth.me;
  }
}

class AuthMutations {
  Future<LoginEmailResult> loginEmail(String email, String password) async {
    final res = await client.mutate$login_email(
      Options$Mutation$login_email(
        variables: Variables$Mutation$login_email(
          input: Input$LoginEmailRequest(email: email, password: password),
        ),
      ),
    );

    return res.parsedData!.auth.login_email;
  }
}
