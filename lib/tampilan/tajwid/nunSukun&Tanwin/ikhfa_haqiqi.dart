import 'package:audioplayers/audioplayers.dart';
import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';

import '../../../data/audio.dart';
import '../../card2.dart';

import '/tampilan/card.dart';


class IkhfaHaqiqi extends StatefulWidget {
  // const IkhfaHaqiqi({Key? key, required this.data}) : super(key: key);
  // final ModelTajwid data;

  @override
  _IkhfaHaqiqiState createState() => _IkhfaHaqiqiState();
}

class _IkhfaHaqiqiState extends State<IkhfaHaqiqi> {
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
                      "Ikhfa berarti menyamarkan, hukum bacaan ini berlaku apabila huruf nun mati atau tanwin bertemu dgn huruf-huruf ikhfa yaitu kaf ( ك ), qaf ( ق ), fa' ( ف ), zha ( ظ ), tha ( ط ), dhad ( ض ), shad ( ص ), syin ( ش ), sin ( س ), za' ( ز ), dzal ( ذ ), dal ( د ), jim ( ج ), tsa' ( ث ), dan ta' ( ت ). Jika bertemu dengan huruf-huruf tersebut maka nun mati atau tanwin tersebut harus dibaca samar atau antara bacaan Izhar dan bacaan Idgham.",
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
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.n),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.o),
            image1: Image.asset(
              'assets/ikhfa haqiqi/1.png',
            ),
            image2: Image.asset(
              'assets/ikhfa haqiqi/2.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.p),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.q),
            image1: Image.asset(
              'assets/ikhfa haqiqi/3.png',
            ),
            image2: Image.asset(
              'assets/ikhfa haqiqi/4.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.r),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.s),
            image1: Image.asset(
              'assets/ikhfa haqiqi/5.png',
            ),
            image2: Image.asset(
              'assets/ikhfa haqiqi/3.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.t),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.u),
            image1: Image.asset(
              'assets/ikhfa haqiqi/3.png',
            ),
            image2: Image.asset(
              'assets/ikhfa haqiqi/3.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.v),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.w),
            image1: Image.asset(
              'assets/ikhfa haqiqi/3.png',
            ),
            image2: Image.asset(
              'assets/ikhfa haqiqi/3.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.x),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.y),
            image1: Image.asset(
              'assets/ikhfa haqiqi/3.png',
            ),
            image2: Image.asset(
              'assets/ikhfa haqiqi/3.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(height: 5),
          ScreenRowAlphabet(
            onpressedBtn1: () => onClick(newAudio: PathAudioAlphabet1.z),
            onpressedBtn2: () => onClick(newAudio: PathAudioAlphabet1.a1),
            image1: Image.asset(
              'assets/ikhfa haqiqi/3.png',
            ),
            image2: Image.asset(
              'assets/ikhfa haqiqi/3.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ScreenRowAlphabet1(
            onpressedBtn: () => onClick(newAudio: PathAudioAlphabet1.b1),
           
            image1: Image.asset(
              'assets/ikhfa haqiqi/3.png',
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
