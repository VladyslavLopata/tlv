// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i3;
import 'package:graphql/client.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:tlv/core/gql_client.dart' as _i7;
import 'package:tlv/core/router.dart' as _i8;
import 'package:tlv/features/home/data/repositories/mission_repository.dart'
    as _i5;
import 'package:tlv/features/home/presentation/cubit/home_cubit.dart' as _i6;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final routerInjectionModule = _$RouterInjectionModule();
    final gQLInjectionModule = _$GQLInjectionModule();
    gh.singleton<_i3.GoRouter>(routerInjectionModule.router);
    gh.singleton<_i4.GraphQLClient>(gQLInjectionModule.gqlClient);
    gh.singleton<_i5.MissionRepository>(
        _i5.MissionRepository(gh<_i4.GraphQLClient>()));
    gh.factory<_i6.HomeCubit>(() => _i6.HomeCubit(gh<_i5.MissionRepository>()));
    return this;
  }
}

class _$GQLInjectionModule extends _i7.GQLInjectionModule {}

class _$RouterInjectionModule extends _i8.RouterInjectionModule {}
