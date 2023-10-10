import 'package:flutter/material.dart';
import 'package:islamiapplication/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
import '../hades/HadethTap.dart';
import '../quran/quran.dart';
import '../radio/radio.dart';
import '../setting/Settings_Tap.dart';
import '../tasbeh/sebha.dart';
import 'my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class firstpag extends StatefulWidget {
  firstpag({Key? key}) : super(key: key);

  @override
  State<firstpag> createState() => _firstpagState();
}

class _firstpagState extends State<firstpag> {
  int selectedindex = 0;
  List<Widget>taps = [
    QuranTap(),
    HadethTap(),
    Sebha(),
    RadioTap(),
    SettingsTap()
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appconfigprocider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Stack(
        children: [
          provider.appTheme == ThemeMode.dark ?
          Image.asset('assets/images/dark_bg.png',
          )
              :
          Image.asset('assets/images/default_bg.png',
          ),
          Scaffold(
            appBar: AppBar(
              title: Text(
                  AppLocalizations.of(context)!.app_title,
                  style: provider.appTheme == ThemeMode.dark ?
                  MyTheme.lighttheme.textTheme.titleSmall!.copyWith(
                      color: MyTheme.white)
                      :
                  MyTheme.lighttheme.textTheme.titleSmall,
              ),
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(canvasColor: MyTheme.prim),
              child: BottomNavigationBar(
                currentIndex: selectedindex,
                onTap: (index) {
                  selectedindex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/icon_quran.png'),
                    ),
                    label: AppLocalizations.of(context)!.quran,
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_hadeth.png'),
                      ),
                      label: AppLocalizations.of(context)!.hadeth),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_sebha.png'),
                      ),
                      label: AppLocalizations.of(context)!.sebha),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_radio.png'),
                      ),
                      label: AppLocalizations.of(context)!.radio),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.settings),
                ],
              ),
            ),
            body: taps[selectedindex],
          ),
        ],
      ),
    );
  }
}
