import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'month_year_picker_localizations_ar.dart';
import 'month_year_picker_localizations_de.dart';
import 'month_year_picker_localizations_en.dart';
import 'month_year_picker_localizations_fr.dart';
import 'month_year_picker_localizations_id.dart';
import 'month_year_picker_localizations_ja.dart';
import 'month_year_picker_localizations_ms.dart';
import 'month_year_picker_localizations_pt.dart';
import 'month_year_picker_localizations_vi.dart';
import 'month_year_picker_localizations_zh.dart';

abstract class MonthYearPickerLocalizations {
  MonthYearPickerLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static MonthYearPickerLocalizations of(BuildContext context) {
    return Localizations.of<MonthYearPickerLocalizations>(
        context, MonthYearPickerLocalizations)!;
  }

  static const LocalizationsDelegate<MonthYearPickerLocalizations> delegate =
      _MonthYearPickerLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('fr'),
    Locale('id'),
    Locale('ja'),
    Locale('ms'),
    Locale('pt'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CH')
  ];

  /// No description provided for @helpText.
  ///
  /// In en, this message translates to:
  /// **'SELECT MONTH/YEAR'**
  String get helpText;

  /// No description provided for @okButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get okButtonLabel;

  /// No description provided for @cancelButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get cancelButtonLabel;
}

class _MonthYearPickerLocalizationsDelegate
    extends LocalizationsDelegate<MonthYearPickerLocalizations> {
  const _MonthYearPickerLocalizationsDelegate();

  @override
  Future<MonthYearPickerLocalizations> load(Locale locale) {
    return SynchronousFuture<MonthYearPickerLocalizations>(
        lookupMonthYearPickerLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'de',
        'en',
        'fr',
        'id',
        'ja',
        'ms',
        'pt',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_MonthYearPickerLocalizationsDelegate old) => false;
}

MonthYearPickerLocalizations lookupMonthYearPickerLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CH':
            return MonthYearPickerLocalizationsZhCh();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return MonthYearPickerLocalizationsAr();
    case 'de':
      return MonthYearPickerLocalizationsDe();
    case 'en':
      return MonthYearPickerLocalizationsEn();
    case 'fr':
      return MonthYearPickerLocalizationsFr();
    case 'id':
      return MonthYearPickerLocalizationsId();
    case 'ja':
      return MonthYearPickerLocalizationsJa();
    case 'ms':
      return MonthYearPickerLocalizationsMs();
    case 'pt':
      return MonthYearPickerLocalizationsPt();
    case 'vi':
      return MonthYearPickerLocalizationsVi();
    case 'zh':
      return MonthYearPickerLocalizationsZh();
  }

  throw FlutterError(
      'MonthYearPickerLocalizations.delegate failed to load unsupported locale'
      '"$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
