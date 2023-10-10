import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapplication/hades/item_hadth_name.dart';
import 'package:islamiapplication/main/my_theme.dart';
import 'package:islamiapplication/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<appconfigprocider>(context);
    if(ahadethList.isEmpty){
      loadHadthFile();
    }
    return Column(
      children: [
        Image.asset('assets/images/hadeth_logo.png'),
        Divider(
          color: provider.appTheme==ThemeMode.dark?
          MyTheme.yellow
              :
          MyTheme.prim,
          thickness: 3,
        ),
        Text(
    AppLocalizations.of(context)!.haeth_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: provider.appTheme==ThemeMode.dark?
          MyTheme.yellow
              :
          MyTheme.prim,
          thickness: 3,
        ),
        ahadethList.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: MyTheme.prim,
                ),
              )
            : Expanded(
                flex: 1,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: provider.appTheme==ThemeMode.dark?
                      MyTheme.yellow
                          :
                      MyTheme.prim,
                      thickness: 1,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemHadethNAme(hadeth:ahadethList[index],
                    );
                  },
                  itemCount: ahadethList.length,
                ),
              ),
      ],
    );
  }

  void loadHadthFile() async {
    String ahaderhcontent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = ahaderhcontent.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethLines = hadethList[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: hadethLines);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;

  List<String> content;

  Hadeth({required this.title, required this.content});
}
