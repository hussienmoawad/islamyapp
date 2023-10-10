import 'package:flutter/material.dart';
import 'package:islamiapplication/main/my_theme.dart';
import 'package:islamiapplication/provider/app_config_provider.dart';
import 'package:islamiapplication/quran/sura_detalis.dart';
import 'package:provider/provider.dart';
//ignore: must_be_immutable
class ItemSuraNAme extends StatelessWidget {
  String name;
  int index;
  ItemSuraNAme({required this.name,required this.index});
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<appconfigprocider>(context);
    return InkWell(
      onTap: (){
      Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
      arguments:SuraDetailesArgs(name: name, index: index)
      );
      },
      child: Text(name,
        style: provider.appTheme==ThemeMode.dark?
        MyTheme.lighttheme.textTheme.titleSmall!.copyWith(color: MyTheme.white)
            :
        MyTheme.lighttheme.textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
