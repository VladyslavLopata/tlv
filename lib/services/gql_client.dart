import 'package:graphql/client.dart';
import 'package:tlv/data/gql/queries.dart';

class GQLClient {
  static const _url = 'https://api.spacex.land/graphql/';

  final GraphQLClient _client;

  GQLClient()
      : _client = GraphQLClient(
          cache: GraphQLCache(),
          link: HttpLink(_url),
        );

  Future<QueryResult> getMissions(String missionName, int offset) async {
    return await _client.query(
      QueryOptions(
        document: gql(missionQuery),
        variables: <String, dynamic>{
          'missionName': missionName,
          'offset': offset,
        },
      ),
    );
  }
}
