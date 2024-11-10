import 'dart:async';

import 'package:giga_chad_starter/core/ui_kit/theme/app_theme.dart';

import '../data_source/theme_local_data_source.dart';

abstract interface class ThemeRepository {
  /// Set theme
  Future<void> setTheme(AppThemeScheme theme);

  /// Observe current theme changes
  AppThemeScheme? loadTheme();
}

/// {@macro theme_repository}
final class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeDataSource _dataSource;

  /// {@macro theme_repository}
  const ThemeRepositoryImpl(this._dataSource);

  @override
  Future<void> setTheme(AppThemeScheme theme) => _dataSource.setTheme(theme);

  @override
  AppThemeScheme? loadTheme() => _dataSource.loadThemeFromCache();
}
