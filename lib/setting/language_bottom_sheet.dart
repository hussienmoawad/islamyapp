import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapplication/main/my_theme.dart';
import 'package:islamiapplication/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class languagebottomsheet extends StatefulWidget {
  @override
  State<languagebottomsheet> createState() => _languagebottomsheetState();
}

class _languagebottomsheetState extends State<languagebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appconfigprocider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
            onTap: () {
              provider.chanelang('en');
            },
            child: provider.applang == 'en'
                ? getslected(AppLocalizations.of(context)!.english)
                : getunselected(AppLocalizations.of(context)!.english)),
        InkWell(
            onTap: () {
              provider.chanelang('ar');
            },
            child: provider.applang == 'ar'
                ? getslected(AppLocalizations.of(context)!.arabic)
                : getunselected(AppLocalizations.of(context)!.arabic)),
      ],
    );
  }

  Widget getslected(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: MyTheme.prim),
          ),
          Icon(
            Icons.check,
            color: MyTheme.prim,
          ),
        ],
      ),
    );
  }

  Widget getunselected(String text) {
    var provider = Provider.of<appconfigprocider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: provider.appTheme == ThemeMode.dark
            ? MyTheme.lighttheme.textTheme.titleSmall!
                .copyWith(color: MyTheme.black)
            : MyTheme.lighttheme.textTheme.titleSmall,
      ),
    );
  }
}
