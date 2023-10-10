import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapplication/hades/hadeth_detailes.dart';
import 'package:islamiapplication/main/first.dart';
import 'package:islamiapplication/provider/app_config_provider.dart';
import 'package:islamiapplication/quran/sura_detalis.dart';
import 'package:provider/provider.dart';
import 'main/my_theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => appconfigprocider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  static const String routeName = 'Home_Screen';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appconfigprocider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyApp.routeName,
      routes: {
        MyApp.routeName: (context) => firstpag(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: MyTheme.lighttheme,
      locale: Locale(provider.applang),
      themeMode: provider.appTheme,
      darkTheme: MyTheme.darkthem,
    );
  }
}
