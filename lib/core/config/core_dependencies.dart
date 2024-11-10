import 'package:flutter/cupertino.dart';
import 'package:giga_chad_starter/core/rest_client/rest_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/app/bloc/app_bloc.dart';
import '../auth/dto/token.dart';
import '../auth/token_local.dart';

/// Dependencies container
base class CoreDependencies {
  const CoreDependencies({
    required this.sharedPreferences,
    required this.appBlocCreator,
    required this.authClient,
    required this.tokenStorage,
    required this.client,
  });

  /// [SharedPreferences] instance, used to store Key-Value pairs.
  final SharedPreferences sharedPreferences;

  /// [AppBloc] instance, used to manage theme and locale.
  final AppBloc Function(BuildContext context) appBlocCreator;

  /// [RestClient] instance, used to handle auth apis.
  final RestClient authClient;

  /// [RestClient] instance, used to handle apis.
  final RestClient client;

  /// [SharedPreferences] instance, used to store Key-Value pairs.
  final TokenStorage<Token> tokenStorage;
}

final class AppDependencies {
  const AppDependencies({
    required this.sharedPreferences,
    required this.authClient,
    required this.client,
  });

  /// [SharedPreferences] instance, used to store Key-Value pairs.
  final SharedPreferences sharedPreferences;

  /// [RestClient] instance, used to handle auth apis.
  final RestClient authClient;

  /// [RestClient] instance, used to handle apis.
  final RestClient client;
}

/// Result of initialization
final class InitializationResult {
  /// {@macro initialization_result}
  const InitializationResult({
    required this.coreDependencies,
    required this.msSpent,
  });

  /// The dependencies
  final CoreDependencies coreDependencies;

  /// The number of milliseconds spent
  final int msSpent;

  @override
  String toString() => '$InitializationResult('
      'dependencies: $coreDependencies, '
      'msSpent: $msSpent'
      ')';
}
