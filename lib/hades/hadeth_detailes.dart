import 'package:flutter/material.dart';
import 'package:islamiapplication/hades/HadethTap.dart';
import 'package:islamiapplication/hades/item_hadeth_detailes.dart';
import 'package:islamiapplication/main/my_theme.dart';
import 'package:islamiapplication/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'Hadeth_details';

  @override
  State<HadethDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<appconfigprocider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Stack(
        children: [
          provider.appTheme == ThemeMode.dark
              ? Image.asset(
                  'assets/images/dark_bg.png',
                )
              : Image.asset(
                  'assets/images/default_bg.png',
                ),
          Scaffold(
            appBar: AppBar(
              title: Text(
                args.title,
                style: provider.appTheme == ThemeMode.dark
                    ? MyTheme.lighttheme.textTheme.titleSmall!
                        .copyWith(color: MyTheme.white)
                    : MyTheme.lighttheme.textTheme.titleSmall,
              ),
            ),
            body: ListView.builder(
              itemBuilder: ((context, index) {
                return ItemHadethDetalise(content: args.content[index]);
              }),
              itemCount: args.content.length,
            ),
          ),
        ],
      ),
    );
  }
}
