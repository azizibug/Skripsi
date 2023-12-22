import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';
import 'package:skripsi_undone/tampilan/tajwid/batuNgompal.dart';
import 'package:skripsi_undone/tampilan/tajwid/mimSukun&tanwin/idgham_mimi.dart';
import 'package:skripsi_undone/tampilan/tajwid/mimSukun&tanwin/ikhfa_syafawi.dart';
import 'package:skripsi_undone/tampilan/tajwid/mimSukun&tanwin/izhar_syafawi.dart';
import 'package:skripsi_undone/tampilan/tajwid/nunSukun&tanwin/idgham_bigunah.dart';
import 'package:skripsi_undone/tampilan/tajwid/nunSukun&tanwin/idgham_bilagunah.dart';
import 'package:skripsi_undone/tampilan/tajwid/nunSukun&tanwin/ikhfa_haqiqi.dart';
import 'package:skripsi_undone/tampilan/tajwid/nunSukun&tanwin/iqlab.dart';
import 'package:skripsi_undone/tampilan/tajwid/nunSukun&tanwin/izhar_halqi.dart';

class TajwidScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          // bottom: false,
          child: Stack(
        children: [
          Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff2372D9),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(80))),
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
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'Belajar\nTajwid',
                          style: whiteNormal.copyWith(fontSize: 30),
                        ),
                      ),
                      Flexible(
                          child: Image.asset(
                        'assets/tajwid.png',
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
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(80))),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: edge),
                            child: Text(
                              'Hukum Nun Sukun dan Tanwin',
                              style: blackNormal.copyWith(fontSize: 18),
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
                                      builder: (context) => IzharHalqi()));
                            },
                            child: ItemMenu(
                              title: 'Izhar Halqi',
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
                                      builder: (context) => IdghamBigunah()));
                            },
                            child: ItemMenu(
                              title: 'Idgham Bigunah',
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
                                      builder: (context) => IdghamBilagunah()));
                            },
                            child: ItemMenu(
                              title: 'Idgham Bilagunah',
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
                                      builder: (context) => Iqlab()));
                            },
                            child: ItemMenu(
                              title: 'Iqlab',
                              img: 'assets/img_4.png',
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
                                      builder: (context) => IkhfaHaqiqi()));
                            },
                            child: ItemMenu(
                              title: 'Ikhfa` Haqiqi',
                              img: 'assets/img_4.png',
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: edge),
                            child: Text(
                              'Hukum Mim (م) Sukun dan Tanwin',
                              style: blackNormal.copyWith(fontSize: 18),
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
                                      builder: (context) => IkhfaSyafawi()));
                            },
                            child: ItemMenu(
                              title: 'Ikhfa` Syafawi',
                              img: 'assets/img_4.png',
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
                                      builder: (context) => IdghamMimi()));
                            },
                            child: ItemMenu(
                              title: 'Idgham Mimi',
                              img: 'assets/img_4.png',
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
                                      builder: (context) => IzharSyafawi()));
                            },
                            child: ItemMenu(
                              title: 'Izhar Syafawi',
                              img: 'assets/img_4.png',
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: edge),
                            child: Text(
                              'Nazham Batu Ngompal',
                              style: blackNormal.copyWith(fontSize: 18),
                            ),
                          ),
                            SizedBox(
                            height: 20,
                          ),
                          
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BatuNgompal()));
             
                            },
                            child: ItemMenu(
                              title: 'Nazham Batu Ngompal',
                              img: 'assets/img_4.png',
                            ),
                          ),
                          SizedBox(
                            height: 20
                          )
                        ],
                      )),
                ),
              )
            ],
          )
        ],
      )),
    );
    //   (backgroundColor: Color.fromARGB(255, 243, 155, 173),
    //   body: SafeArea(
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.vertical,
    //       child: Column(
    //         crossAxisAlignment:  CrossAxisAlignment.start,
    //         children: [
    //           IconButton(
    //               onPressed: () {
    //                 Navigator.pop(context);
    //               },
    //               icon: Icon(
    //                 Icons.arrow_back,

    //                 size: 25,
    //                 color: Color(0xff662549),
    //               )
    //           ),
    //           Row(
    //             children: [
    //               Container(
    //                 width: 150,
    //                 margin: EdgeInsets.only(left: edge),
    //                 child: Text(
    //                   'Tajwid Dasar',
    //                   style: blacksPoppins.copyWith(
    //                     fontSize: 28
    //                   ),
    //                   maxLines: 2,
    //                 ),
    //               ),
    //               Flexible(
    //                   child: Image.asset('assets/img_2.png', width: 150,)
    //               )
    //             ],
    //           ),
    //           SizedBox(
    //             height: 18,
    //           ),
    //           Container(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: edge
    //             ),
    //             child: StaggeredGridView.countBuilder(
    //                 shrinkWrap: true,
    //                 itemCount: dataListDoa.length,
    //                 scrollDirection: Axis.vertical,
    //                 physics: NeverScrollableScrollPhysics(),
    //                 crossAxisCount: 4,
    //                 mainAxisSpacing: 10,
    //                 crossAxisSpacing: 10,
    //                staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
    //                 itemBuilder: (context, index) {
    //                   return Transform.translate(
    //                       offset: Offset(
    //                           0.0,
    //                           index.isOdd ? 30 : 0.0
    //                       ),
    //                     child: itemTajwid(context, index),
    //                   );
    //                 },
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
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
          color: Color(0xff2372D9), borderRadius: BorderRadius.circular(15)),
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
