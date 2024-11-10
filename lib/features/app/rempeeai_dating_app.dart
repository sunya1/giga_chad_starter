import 'package:flutter/material.dart';
import 'package:giga_chad_starter/features/app/router/app_router.dart';

import '../../core/config/core_dependencies.dart';
import 'app_scope.dart';

final _appRouter = AppRouter();

class RempeeaiDatingApp extends StatelessWidget {
  final InitializationResult result;

  const RempeeaiDatingApp({required this.result, super.key});

  @override
  Widget build(BuildContext context) => AppScope(
        coreDependencies: result.coreDependencies,
        builder: (context, appState) {
          return MaterialApp.router(
            theme: appState.appTheme?.getTheme,
            routerConfig: _appRouter.config(),
          );
        },
      );
}
