import 'package:flutter/material.dart';
import 'package:giga_chad_starter/core/localization/l10n/app_localizations.dart';

typedef LocalizedString = String Function(AppLocalizations localizations);

extension AppLocalizationsExtension on AppLocalizations {
  Locale get locale => Locale.fromSubtags(
        languageCode: localeName,
      );
}

extension LocalizationExtensionX on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this);

  AppLocalizations get l10n => AppLocalizations.of(this);

  Locale get locale => localizations.locale;
}
