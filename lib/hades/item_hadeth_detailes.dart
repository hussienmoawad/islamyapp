import 'package:flutter/material.dart';
import 'package:islamiapplication/main/my_theme.dart';
import 'package:islamiapplication/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemHadethDetalise extends StatelessWidget {
  String content;

  ItemHadethDetalise({required this.content});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appconfigprocider>(context);
    return Text(
      content,
      style: provider.appTheme == ThemeMode.dark
          ? MyTheme.lighttheme.textTheme.titleSmall!
              .copyWith(color: MyTheme.white)
          : MyTheme.lighttheme.textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
