import 'package:audioplayers/audioplayers.dart';
import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';

import '../../../data/audio.dart';
import '../../card2.dart';

import '/tampilan/card.dart';


class Iqlab extends StatefulWidget {
  // const Iqlab({Key? key, required this.data}) : super(key: key);
  // final ModelTajwid data;

  @override
  _IqlabState createState() => _IqlabState();
}

class _IqlabState extends State<Iqlab> {
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
                      "Iqlab adalah suatu hukum bacaan Alquran yang terjadi apabila nun mati atau tanwin bertemu dengan satu huruf saja yaitu huruf Ba' (ب). Di dalam bacaan ini, bacaan nun mati atau tanwin tidak lagi dibaca sebagai nun atau tanwin berubah menjadi bunyi huruf mim.",
                      style: orangePoppins.copyWith(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
              ],
            )
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet1(
            onpressedBtn: () => onClick(newAudio: PathAudioAlphabet1.m),
           
            image1: Image.asset(
              'assets/iqlab.png',
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
