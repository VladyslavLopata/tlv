import 'package:get_it/get_it.dart';
import 'package:tlv/data/repositories/mission_repository.dart';
import 'package:tlv/services/gql_client.dart';

final locator = GetIt.I;

void setupDependencies() {
  locator.registerLazySingleton(() => GQLClient());
  locator.registerLazySingleton(() => MissionRepository());
}
