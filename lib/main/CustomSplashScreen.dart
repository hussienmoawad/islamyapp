/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'first.dart';
class CustomSplashScreen extends StatefulWidget {
  @override
  _CustomSplashScreenState createState() => _CustomSplashScreenState();
}
class _CustomSplashScreenState extends State<CustomSplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadMainScreen();
  }
  Future<void> _loadMainScreen() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => firstpag()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/splash.png",
            fit: BoxFit.cover,
          ),
          Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}*/