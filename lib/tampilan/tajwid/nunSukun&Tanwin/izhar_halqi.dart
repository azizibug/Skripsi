import 'package:audioplayers/audioplayers.dart';
import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';

import '../../../data/audio.dart';
import '../../card2.dart';

import '/tampilan/card.dart';

class IzharHalqi extends StatefulWidget {
  // const IzharHalqi({Key? key, required this.data}) : super(key: key);
  // final ModelTajwid data;

  @override
  _IzharHalqiState createState() => _IzharHalqiState();
}

class _IzharHalqiState extends State<IzharHalqi> {
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
        title: Text('Detail', style: blackNormal),
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
                      "Izhar halqi adalah hukum bacaan apabila nun mati atau tanwin bertemu dengan salah satu huruf izhar halqi. Izhar secara bahasa artinya jelas dan halqi sendiri berarti tenggorokan. Cara mengucapkan izhar halqi harus jelas. Adapun huruf-huruf yang dimaksud yaitu hamzah (ء), kha (ح), ha (خ), ain (ع), ghain (غ), dan ha' (هـ).",
                      style: orangePoppins.copyWith(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
              ],
            )
          ),
          SizedBox(
            height: 1,
          ),
          Text("Contoh dengan Suara", style: blackNormal.copyWith(fontSize: 20),),
          SizedBox(height: 5,),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.a),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.b),
            image1: Image.asset(
              'assets/izhar halqi/1.png',
            ),
            image2: Image.asset(
              'assets/izhar halqi/2.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.c),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.d),
            image1: Image.asset(
              'assets/izhar halqi/3.png',
            ),
            image2: Image.asset(
              'assets/izhar halqi/4.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.e),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.e),
            image1: Image.asset(
              'assets/izhar halqi/5.png',
            ),
            image2: Image.asset(
              'assets/izhar halqi/5.png',
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
