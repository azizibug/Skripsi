import 'package:audioplayers/audioplayers.dart';
import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';
import '../../../data/audio.dart';
import '../../card2.dart';
import '/tampilan/card.dart';


class IzharSyafawi extends StatefulWidget {
  // const Iqlab({Key? key, required this.data}) : super(key: key);
  // final ModelTajwid data;

  @override
  _IzharStafawiState createState() => _IzharStafawiState();
}

class _IzharStafawiState extends State<IzharSyafawi> {
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
                      "Hukum bacaan ini berlaku apabila huruf mim mati bertemu salah satu huruf hijaiyyah selain huruf mim (م) dan huruf ba' (ب). Izhar Syafawi harus dilafalkan dengan jelas pada bibir sambil menutup mulut.",
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
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.e1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.f1),
            image1: Image.asset(
              'assets/izhar syafawi/1.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/2.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.g1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.h1),
            image1: Image.asset(
              'assets/izhar syafawi/3.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/4.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.i1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.j1),
            image1: Image.asset(
              'assets/izhar syafawi/5.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/6.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.k1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.l1),
            image1: Image.asset(
              'assets/izhar syafawi/7.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/8.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.m1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.n1),
            image1: Image.asset(
              'assets/izhar syafawi/9.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/10.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.o1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.p1),
            image1: Image.asset(
              'assets/izhar syafawi/11.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/12.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.q1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.r1),
            image1: Image.asset(
              'assets/izhar syafawi/13.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/14.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.s1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.t1),
            image1: Image.asset(
              'assets/izhar syafawi/15.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/16.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.u1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.v1),
            image1: Image.asset(
              'assets/izhar syafawi/17.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/18.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.w1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.x1),
            image1: Image.asset(
              'assets/izhar syafawi/19.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/20.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.y1),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.z1),
            image1: Image.asset(
              'assets/izhar syafawi/21.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/22.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.a2),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.b2),
            image1: Image.asset(
              'assets/izhar syafawi/23.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/24.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.c2),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.d2),
            image1: Image.asset(
              'assets/izhar syafawi/25.png',
            ),
            image2: Image.asset(
              'assets/izhar syafawi/26.png',
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
