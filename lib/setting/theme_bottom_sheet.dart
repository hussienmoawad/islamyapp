import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapplication/main/my_theme.dart';
import 'package:islamiapplication/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class themebottomsheet extends StatefulWidget {
  @override
  State<themebottomsheet> createState() => _languagebottomsheetState();
}

class _languagebottomsheetState extends State<themebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appconfigprocider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
            onTap: () {
              provider.changetheme(ThemeMode.dark);
            },
            child: provider.appTheme == ThemeMode.dark
                ? getslected(AppLocalizations.of(context)!.dark)
                : getunselected(AppLocalizations.of(context)!.dark)),
        InkWell(
            onTap: () {
              provider.changetheme(ThemeMode.light);
            },
            child: provider.appTheme == ThemeMode.light
                ? getslected(AppLocalizations.of(context)!.light)
                : getunselected(AppLocalizations.of(context)!.light)),
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
