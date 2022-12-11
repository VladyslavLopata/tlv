import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:tlv/features/home/data/gql/queries.dart';
import 'package:tlv/features/home/data/models/mission.dart';

@singleton
class MissionRepository {
  const MissionRepository(this._client);

  final GraphQLClient _client;

  static const missionsPerPage = 10;

  Future<List<Mission>?> getMissions({
    required String searchKey,
    int page = 0,
  }) async {
    final missionQuerryData = await _client.query(
      QueryOptions(
        document: gql(missionQuery),
        variables: <String, dynamic>{
          'missionName': searchKey,
          'offset': page * missionsPerPage,
        },
      ),
    );

    if (missionQuerryData.hasException) {
      return null;
    }

    try {
      final launchesData = missionQuerryData.data!['launches'] as List;

      return launchesData
          .cast<Map<String, dynamic>>()
          .map(Mission.fromJson)
          .toList();
    } catch (_) {
      return null;
    }
  }
}
