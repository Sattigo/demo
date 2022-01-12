import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sheet_localization/flutter_sheet_localization.dart';

part 'localization.g.dart';

extension AppLocalizationsExtensions on BuildContext {
  AppLocalizationsData get localizations {
    return Localizations.of<AppLocalizationsData>(this, AppLocalizationsData)!;
  }
}

/// Here you can find translations:
/// https://docs.google.com/spreadsheets/d/1wf4a-a4zdtsdtbZQGx_E7rV6pFThAo_TbSSdKfDGjOc/edit#gid=0
@SheetLocalization('1wf4a-a4zdtsdtbZQGx_E7rV6pFThAo_TbSSdKfDGjOc', '0', 1)
class AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizationsData> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => localizedLabels.containsKey(locale);

  @override
  Future<AppLocalizationsData> load(Locale locale) =>
      SynchronousFuture<AppLocalizationsData>(localizedLabels[locale]!);

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
