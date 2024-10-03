import 'package:compound_feature_brick/counter/counter.dart';
import 'package:compound_feature_brick/l10n/l10n.dart';
import 'package:compound_feature_brick/src/presentation/example/view/example_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const ExamplePage(),
    );
  }
}
