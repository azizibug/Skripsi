import 'package:skripsi_undone/color.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:skripsi_undone/tampilan/cerita.dart';
import 'package:skripsi_undone/tampilan/doa&dzikir/tampilan_doa.dart';

import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:ternav_icons/ternav_icons.dart';
import 'package:skripsi_undone/tampilan/tajwid/TajwidTampilan.dart';
import 'package:flutter/material.dart';

import 'fiqih/FiqihTampilan.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenAccentColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: greenAccentColor,
                      )),
                  // Flexible(
                  //     flex: 1,
                  //     child: Container(
                  //       color: greenColor,
                  //     ))
                ],
              ),
              Column(
                children: [
                  Flexible(
                    flex: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(80))),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Mari Belajar \n Fiqh & Tajwid',
                              style: whiteNormal.copyWith(fontSize: 24),
                            ),
                          ),
                          Flexible(
                              child: Image.asset(
                            'assets/depen.png',
                            height: 150,
                            width: 150,
                          ))
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          color: greenAccentColor,
                          borderRadius:
                              const BorderRadius.only(topRight: Radius.circular(80))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: edge),
                            child: Text(
                              'Pilih yang Ingin\n Kamu Pelajari',
                              style: blackNormal.copyWith(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FiqihScreen()));
                            },
                            child: const ItemMenu(
                              title: 'Fiqih',
                              img: 'assets/img_1.png',
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TajwidScreen()));
                            },
                            child: const ItemMenu(
                              title: 'Tajwid',
                              img: 'assets/img_2.png',
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset('assets/home.png', height: 200,width: 250,),
                   const SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          )),
      bottomNavigationBar: Container(
        color: greenColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
          child: GNav(
            backgroundColor: greenColor,
            color: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: greenAccentColor,
            gap: 8,
            padding: const EdgeInsets.all(15),
            tabs: [
              GButton(
                icon: TernavIcons.light.home_2,
                iconSize: 25,
                text: 'Beranda',
              ),
              GButton(
                icon: FlutterIslamicIcons.solidQuran,
                iconSize: 29,
                text: 'Cerita',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CeritaScreen()));
                },
              ),
              GButton(
                icon: FlutterIslamicIcons.solidTasbih3,
                iconSize: 30,
                text: 'Do`a dan Dzikir',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const DoaScreen()));
                },
              ),

              // GButton(
              //   icon : Icons.now_widgets,
              //   text: 'App',
              // ),
            ],
            // onTabChange: (index) {
            //   setState(() {
            //     _indexPage = index;
            //   });
            //   // print('test');
            // },
          ),
        ),
      ),
    );
  }
}

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    Key? key,
    required this.title,
    required this.img,
  }) : super(key: key);

  final String title;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: greenColor, borderRadius: BorderRadius.circular(15)),
      height: 80,
      margin: EdgeInsets.only(left: edge, right: 24),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Flexible(
              child: Container(
            margin: const EdgeInsets.only(left: 10),
            width: 220,
            child: Text(
              title,
              style: whiteNormal.copyWith(fontSize: 16),
              maxLines: 2,
              textAlign: TextAlign.left,
            ),
          )),
          Image.asset(img)
        ],
      ),
    );
  }
}
