import 'package:api/api.dart';
import 'package:org_data/org_data.dart';
import 'package:org_data/src/graphql/query.gql.dart';

class OrgQuery {
  Future<Fragment$Member> getMember(String id) async {
    final res = await throwIfException(
      client.query$GetMembers(
        Options$Query$GetMembers(
          variables: Variables$Query$GetMembers(
            pagination: Input$PaginationInput(filter: {"id": id}),
          ),
        ),
      ),
    );
    return res.org.us.members.items.first;
  }

  Future<Fragment$MeOrganization> us() async {
    final res = await client.query$GetOrg();
    if (res.hasException) {
      throw res.exception!.graphqlErrors.first;
    }
    return res.parsedData!.org.us;
  }
}
