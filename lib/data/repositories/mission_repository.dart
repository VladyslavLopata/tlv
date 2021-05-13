import 'package:tlv/data/models/mission.dart';
import 'package:tlv/domain/entities/mission.dart';
import 'package:tlv/domain/repositories/mission_repository.dart';
import 'package:tlv/services/gql_client.dart';
import 'package:tlv/services/service_locator.dart';

class MissionRepository implements IMissionRepository {
  @override
  Future<List<Mission>> getMissions(String search, int page) async {
    final missionData =
        await locator<GQLClient>().getMissions(search, page * 10);

    if (missionData.hasException) {
      throw missionData.exception!;
    }

    return missionData.data!['launches']
        .map<MissionModel>(
          (launch) => MissionModel(
            name: launch['mission_name'],
            details: launch['details'],
          ),
        )
        .toList();
  }
}