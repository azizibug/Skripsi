import 'package:audioplayers/audioplayers.dart';
import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';

import '../../../data/audio.dart';
import '../../card2.dart';

import '/tampilan/card.dart';


class IdghamBigunah extends StatefulWidget {
  // const IdghamBigunah({Key? key, required this.data}) : super(key: key);
  // final ModelTajwid data;

  @override
  _IdghamBigunahState createState() => _IdghamBigunahState();
}

class _IdghamBigunahState extends State<IdghamBigunah> {
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
                      "Idgham bighunnah adalah hukum bacaan yang melebur dan disertai dengungan atau yang berarti memasukkan salah satu huruf nun mati atau tanwin ke dalam huruf sesudahnya dan lafal dari idgham bighunnah tersebut haruslah mendengung jika bertemu empat huruf yaitu ya (ي), nun (ن), mim (م), dan wau (و)",
                      style: orangePoppins.copyWith(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
              ],
            )
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.g),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.h),
            image1: Image.asset(
              'assets/idgham bigunah/1.png',
            ),
            image2: Image.asset(
              'assets/idgham bigunah/2.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.i),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.j),
            image1: Image.asset(
              'assets/idgham bigunah/3.png',
            ),
            image2: Image.asset(
              'assets/idgham bigunah/4.png',
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
