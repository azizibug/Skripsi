import 'package:skripsi_undone/color.dart';
// import 'package:skripsi_undone/ui/harianPage/doa_harian_page.dart';
// import 'package:skripsi_undone/ui/pagiPetang/dzikir_pagi_petang.dart';
// import 'package:skripsi_undone/ui/setelahSholat/dzikir_setelah_sholat.dart';
// import 'package:skripsi_undone/ui/dzikirSetiapSaat/dzikir_setiap_saat.dart';
import 'package:flutter/material.dart';

import 'dzikir setiap saat/dzikirsetiapsaat.dart';
import 'harian/doaHarian.dart';
import 'pagipetang/dzikirPagiPetang.dart';
import 'setelahSholat/dzikirSetelahSholat.dart';

class DoaScreen extends StatelessWidget {
  const DoaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff539165),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(80))),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                size: 26,
                                color: orangeColor,
                              )),
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            child: Text(
                              'Do\'a dan\nDzikir',
                              style: whiteNormal.copyWith(fontSize: 30),
                            ),
                          ),
                          Flexible(
                              child: Image.asset(
                            'assets/img_3.png',
                            height: 200,
                          ))
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          color: orangeColor,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(80))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: edge),
                            child: Text(
                              'Pilihan Do\'a & Dzikir',
                              style: blackNormal.copyWith(fontSize: 24),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DzikirSetelahSholat()));
                            },
                            child: ItemMenu(
                              title: 'Dzikir & Doa Sunnah Setelah Sholat',
                              img: 'assets/img_1.png',
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DoaHarianPage()));
                            },
                            child: ItemMenu(
                              title: 'Doa Harian',
                              img: 'assets/img_2.png',
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DzikirSetiapSaat()));
                            },
                            child: ItemMenu(
                              title: 'Dzikir Setiap Saat',
                              img: 'assets/img_3.png',
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DzikirPagiPetang()));
                            },
                            child: ItemMenu(
                              title: 'Dzikir Pagi Petang',
                              img: 'assets/img_4.png',
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
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
          color: Color(0xff539165), borderRadius: BorderRadius.circular(15)),
      height: 80,
      margin: EdgeInsets.only(left: edge, right: 24),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Flexible(
              child: Container(
            margin: EdgeInsets.only(left: 10),
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
