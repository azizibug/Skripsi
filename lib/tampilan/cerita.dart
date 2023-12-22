import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';

class CeritaScreen extends StatelessWidget {
  const CeritaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: indigoAccentColor,
        body: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.blue,
                )),
          ]),
        )));
  }
}
