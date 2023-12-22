import 'package:audioplayers/audioplayers.dart';
import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';
import '../../../data/audio.dart';
import '../../card2.dart';
import '/tampilan/card.dart';


class IdghamMimi extends StatefulWidget {
  // const Iqlab({Key? key, required this.data}) : super(key: key);
  // final ModelTajwid data;

  @override
  _IdghamMimiState createState() => _IdghamMimiState();
}

class _IdghamMimiState extends State<IdghamMimi> {
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
                      "Idgham mimi atau idgham mutamasilain ini sangat mudah diingat yakni ketika huruf mim mati bertemu dengan huruf mim dan cara melafalkan bacaannya tersebut adalah membaca huruf mim rangkap secara mendengung.",
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
            onpressedBtn: () => onClick(newAudio: PathAudioAlphabet1.d1),
            
            image1: Image.asset(
              'assets/idgham mimi.png',
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
