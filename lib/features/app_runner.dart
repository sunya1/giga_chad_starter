import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giga_chad_starter/core/config/initialization.dart';
import 'package:giga_chad_starter/core/logger/logger.dart';
import 'package:giga_chad_starter/features/app/rempeeai_dating_app.dart';
import 'package:giga_chad_starter/features/app/view/screens/failed_screen.dart';

import '../core/bloc_base/observers/app_bloc_observer.dart';

/// A class which is responsible for initialization and running the app.
final class AppRunner {
  const AppRunner();

  /// Start the initialization and in case of success run application
  Future<void> initializeAndRun() async {
    final binding = WidgetsFlutterBinding.ensureInitialized();

    // Preserve splash screen
    binding.deferFirstFrame();

    // Override logging
    FlutterError.onError = logger.logFlutterError;
    WidgetsBinding.instance.platformDispatcher.onError = logger.logPlatformDispatcherError;

    // Setup bloc observer and transformer
    Bloc.observer = const AppBlocObserver();
    Bloc.transformer = bloc_concurrency.sequential();
    const initializationProcessor = InitializationProcessor();

    Future<void> initializeAndRun() async {
      try {
        final result = await initializationProcessor.initialize();
        runApp(RempeeaiDatingApp(result: result));
      } catch (e, stackTrace) {
        logger.error('Initialization failed', error: e, stackTrace: stackTrace);
        runApp(
          InitializationFailedApp(
            error: e,
            stackTrace: stackTrace,
            retryInitialization: initializeAndRun,
          ),
        );
      } finally {
        binding.allowFirstFrame();
      }
    }

    await initializeAndRun();
  }
}
