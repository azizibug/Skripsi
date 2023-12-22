import 'package:audioplayers/audioplayers.dart';
import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';
import '../../../data/audio.dart';
import '../../card2.dart';
import '/tampilan/card.dart';

class IkhfaSyafawi extends StatefulWidget {
  // const Iqlab({Key? key, required this.data}) : super(key: key);
  // final ModelTajwid data;

  @override
  _IkhfaStafawiState createState() => _IkhfaStafawiState();
}

class _IkhfaStafawiState extends State<IkhfaSyafawi> {
  AudioCache audioCache = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 223, 114),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Detail'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
              padding: EdgeInsets.all(18),
              margin: EdgeInsets.symmetric(horizontal: edge, vertical: edge),
              decoration: BoxDecoration(
                color: purpleColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "Ikhfa syafawi dibaca dengan cara samar-samar pada bibir dan juga dengan didengungkan. Ikhfa syafawi berbeda dengan ikhfa haqiqi. Perbedaannya adalah ikhfa syafawi bukan nun mati yang bertemu dengan huruf ikhfa melainkan huruf mim mati yang bertemu dengan huruf ba' (ب).",
                    style: orangePoppins.copyWith(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ],
              )),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet1(
            onpressedBtn: () => onClick(newAudio: PathAudioAlphabet1.c1),
            image1: Image.asset(
              'assets/ikhfa syafawi.png',
            ),
          ),
        ]),
      )),
    );
  }

  void onClick({
    required String newAudio,
  }) async {
    audioPlayer.stop();
    audioPlayer = await audioCache.play(newAudio);
  }
}
