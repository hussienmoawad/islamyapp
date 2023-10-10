import 'package:flutter/material.dart';
import 'package:islamiapplication/hades/HadethTap.dart';
import 'package:islamiapplication/hades/hadeth_detailes.dart';
import 'package:islamiapplication/main/my_theme.dart';
import 'package:provider/provider.dart';

import '../provider/app_config_provider.dart';

//ignore: must_be_immutable
class ItemHadethNAme extends StatelessWidget {
  Hadeth hadeth;

  ItemHadethNAme({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appconfigprocider>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        style: provider.appTheme == ThemeMode.dark
            ? MyTheme.lighttheme.textTheme.titleSmall!
                .copyWith(color: MyTheme.white)
            : MyTheme.lighttheme.textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
