import 'package:flutter/material.dart';

class ScreenRowAlphabet extends StatelessWidget {
  //
  final Image image1;
  final Image image2;

  // // btn
  final Function() onpressedBtn1;
  final Function() onpressedBtn2;

  ScreenRowAlphabet({
    le2,
    required this.onpressedBtn1,
    required this.onpressedBtn2,
    required this.image1,
    required this.image2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ScreenBtnAlphabet(
          onpressedBtn: onpressedBtn1,
          image: image1,
          
        ),
        SizedBox(
          width: 10,
        ),
        ScreenBtnAlphabet(
          onpressedBtn: onpressedBtn2,
          image: image2,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

//////////////////////////////////////////////
// ignore: must_be_immutable
class ScreenBtnAlphabet extends StatelessWidget {
  Image image;
  final Function() onpressedBtn;
  ScreenBtnAlphabet({required this.image, required this.onpressedBtn});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onpressedBtn,
        style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 115, 192, 255),
            onPrimary: Colors.white,
            textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            padding: EdgeInsets.all(8),
            maximumSize: Size(200, 200), ),
        child: image,
        //child: Text(title)
      ),
    );
  }
}

//////////////////////////////////////////////////////////
class ScreenRowAlphabet1 extends StatelessWidget {
  //
  final Image image1;
 

  // // btn
  final Function() onpressedBtn;
 

  ScreenRowAlphabet1({
    le2,
    required this.onpressedBtn,
    required this.image1,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ScreenBtnAlphabet1(
          onpressedBtn: onpressedBtn,
          image1: image1
          
        ),
        SizedBox(
          width: 10,
        ),
        
      ],
    );
  }
}
////////////////////////////////////////////////
///
class ScreenBtnAlphabet1 extends StatelessWidget {
  late Image image1;
  final Function() onpressedBtn;
  ScreenBtnAlphabet1({required this.image1, required this.onpressedBtn});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onpressedBtn,
        style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 115, 192, 255),
            onPrimary: Colors.white,
            textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            padding: EdgeInsets.all(8),
            maximumSize: Size(200, 200), ),
        child: image1,
        //child: Text(title)
      ),
    );
  }
}