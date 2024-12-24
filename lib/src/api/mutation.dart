import 'package:api/api.dart';
import 'package:org_data/org_data.dart';
import 'package:org_data/src/graphql/common/mutation.gql.dart';
import 'package:org_data/src/graphql/mutation.gql.dart';

class OrgMutations {

  Future<String> getDeviceId(Input$SetDeviceIdInput input) async {
    final res = await throwIfException(
      client.mutate$SetDevice(
        Options$Mutation$SetDevice(
          variables: Variables$Mutation$SetDevice(input: input),
        ),
      ),
    );
    return res.public.set_device_id;
  }

  Future<String> createOrg(Input$CreateOrgInput input) async {
    final res = await throwIfException(
      client.mutate$CreateOrg(
        Options$Mutation$CreateOrg(
          variables: Variables$Mutation$CreateOrg(input: input),
        ),
      ),
    );
    return res.org.createOrg.id;
  }
}
