import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tlv/core/service_locator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = injector<GoRouter>();

    return MaterialApp.router(
      title: 'TLV Demo',
      routerConfig: router,
    );
  }
}
