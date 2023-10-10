import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapplication/main/my_theme.dart';
import 'package:islamiapplication/provider/app_config_provider.dart';
import 'package:islamiapplication/quran/item_sura_datalise.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura_details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<appconfigprocider>(context);
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraDetailesArgs;
    if(verses.isEmpty){
      loadfile(args.index);
    }

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Stack(
          children: [
            provider.appTheme==ThemeMode.dark?
            Image.asset('assets/images/dark_bg.png',
            )
                :
            Image.asset('assets/images/default_bg.png',
            ),
      Scaffold(
      appBar: AppBar(
      title: Text(
      '${args.name}',
      style:  provider.appTheme==ThemeMode.dark?
    MyTheme.lighttheme.textTheme.titleSmall!.copyWith(color: MyTheme.white)
        :
    MyTheme.lighttheme.textTheme.titleSmall,
      ),
      ),
      body: verses.length == 0 ?
      Center(child: CircularProgressIndicator(
        color: MyTheme.prim,
      ))
      :
      ListView.separated(
        separatorBuilder: (context,index){
          return Divider(
            color:  provider.appTheme==ThemeMode.dark?
            MyTheme.yellow
                :
            MyTheme.prim,
            thickness: 2,
          );
        },
        itemBuilder: ((context, index) {
      return ItemSuraDetalise(content: verses[index],index: index,);
      }),
      itemCount: verses.length,
      ),
      )
      ,
      ]
      ,
      ),
    );
  }

  void loadfile(int index) async {
    String content = await rootBundle.loadString(
        'assets/files/${index + 1}.txt');
    List<String>lines = content.split('\n');
    verses = lines;
    setState(() {

    });
    print(lines);
  }
}

class SuraDetailesArgs {
  String name;

  int index;

  SuraDetailesArgs({required this.name, required this.index});
}
