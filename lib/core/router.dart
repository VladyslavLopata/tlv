import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:tlv/features/home/presentation/home_page.dart';

@module
abstract class RouterInjectionModule {
  @singleton
  GoRouter get router => GoRouter(
        routes: [
          GoRoute(
            path: '/',
            name: 'home',
            builder: (context, state) => const HomePage(),
          ),
        ],
      );
}
