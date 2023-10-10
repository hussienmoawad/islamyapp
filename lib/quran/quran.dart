import 'package:flutter/material.dart';
import 'package:islamiapplication/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
import '../main/my_theme.dart';
import 'item_sura_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//ignore: must_be_immutable
class QuranTap extends StatelessWidget {
  QuranTap({Key? key}) : super(key: key);
  List<String> names = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<appconfigprocider>(context);
    return Column(
      children: [
        Image.asset('assets/images/qur2an_screen_logo.png'),
        Divider(
          color: provider.appTheme==ThemeMode.dark?
          MyTheme.yellow
              :
          MyTheme.prim,
          thickness: 3,
        ),
        Text( AppLocalizations.of(context)!.sura_name,
          style: Theme.of(context).textTheme.titleMedium,
            ),
        Divider(
          color:provider.appTheme==ThemeMode.dark?
          MyTheme.yellow
              :
          MyTheme.prim,
          thickness: 3,
        ),
        Expanded(
          flex: 1,
          child: ListView.separated(
            separatorBuilder: (context,index){
              return Divider(
                color:  provider.appTheme==ThemeMode.dark?
              MyTheme.yellow
                  :
              MyTheme.prim,
                thickness: 1,
              );
            },
            itemBuilder: (context, index) {
             return ItemSuraNAme(name:names[index],index: index,);
            },
            itemCount: names.length,
          ),
        ),
      ],
    );
  }
}
