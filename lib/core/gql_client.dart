import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

@module
abstract class GQLInjectionModule {
  @singleton
  GraphQLClient get gqlClient => GraphQLClient(
        cache: GraphQLCache(),
        link: HttpLink('https://api.spacex.land/graphql/'),
      );
}
