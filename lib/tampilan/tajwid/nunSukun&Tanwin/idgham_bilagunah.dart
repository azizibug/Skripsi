import 'package:audioplayers/audioplayers.dart';
import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';

import '../../../data/audio.dart';
import '../../card2.dart';

import '/tampilan/card.dart';


class IdghamBilagunah extends StatefulWidget {
  // const IdghamBilagunah({Key? key, required this.data}) : super(key: key);
  // final ModelTajwid data;

  @override
  _IdghamBilagunahState createState() => _IdghamBilagunahState();
}

class _IdghamBilagunahState extends State<IdghamBilagunah> {
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
                      "Idgham Bilaghunnah artinya melebur tanpa dengung atau maksudnya memasukkan huruf nun mati atau tanwin ke dalam huruf sesudahnya tanpa disertai suara yang mendengung. Hukum bacaan tersebut berlaku jika nun atau tanwin bertemu huruf lam (ل) dan ra (ر). Meskipun demikian hukum ini tidak berlaku apabila nun mati atau tanwin serta huruf tersebut tidak ada dalam satu kata.",
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
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.k),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.l),
            image1: Image.asset(
              'assets/idgham bilagunah/1.png',
            ),
            image2: Image.asset(
              'assets/idgham bilagunah/2.png',
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
