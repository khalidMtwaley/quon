import 'package:flutter/material.dart';
import 'package:quon/core/router/app_rourer.dart';
import 'package:quon/core/theme/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const QuonApp());
}

class QuonApp extends StatelessWidget {
  const QuonApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Quon',
      theme: AppTheme.lightThemeMode,
      routerConfig: routes,
      localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
    );
  }
}