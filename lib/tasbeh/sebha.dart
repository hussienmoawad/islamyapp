import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  const Sebha({Key? key}) : super(key: key);
  static Color prim = Color(0xffB7935F);

  @override
  _SebhaState createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int count = 0;
  int buttonCount = 0;
  double secondImageRotation = 0.0;
  String buttonText = 'سبحان الله';

  void _animateCircle() {
    setState(() {
      count++;

      if (count == 99) {
        count = 0;
        buttonCount = 0;
        buttonText = 'سبحان الله';
      } else if (count % 33 == 0) {
        buttonCount++;
        if (buttonCount == 1) {
          buttonText = 'الحمدلله';
        } else {
          buttonText = 'الله اكبر';
        }
      }
      secondImageRotation += 0.3; // Increment the rotation angle
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: GestureDetector(
                    onTap: _animateCircle,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 130),
                      child: Image.asset('assets/images/head_sebha_logo.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: secondImageRotation,
                        child: Image.asset('assets/images/body_sebha_logo.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'عدد التسبيحات',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 5,
              color: Sebha.prim,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 20,
                  right: 20,
                  bottom: 25,
                ),
                child: Text(
                  count == 0 ? '0' : count.toString(), // Display '0' when count is 0
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33),
                ),
                backgroundColor: Sebha.prim,
              ),
              child: Text(
                count == 0 ? 'سبحان الله' : buttonText,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
