import 'package:flutter/material.dart';
import 'package:telmi/core/apptheme.dart';
import 'package:telmi/feature/onboarding_page.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeType: LocalizationDefaultType.asDefined,
    languagesList: <String>['en', 'fr'],
    assetsDirectory: 'assets/lang/',
  );

  runApp(LocalizedApp(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: translator.delegates,
      locale: translator.activeLocale,
      supportedLocales: translator.locals(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme(),
      home: OnboardingPage(),
    );
  }
}
