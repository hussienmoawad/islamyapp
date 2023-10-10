import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 140,),
        Image.asset('assets/images/radio_image.png'),
        SizedBox(height: 70,),
        Text('اذاعة القران الكريم من القاهرة',style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.arrow_back_ios,size: 50,color: Colors.brown,),
          SizedBox(width: 50,),
          Icon(Icons.play_arrow,size: 50,color: Colors.brown),
          SizedBox(width: 50,),
          Icon(Icons.arrow_forward_ios,size: 50,color: Colors.brown),
        ],)



      ],
    );
  }
}
