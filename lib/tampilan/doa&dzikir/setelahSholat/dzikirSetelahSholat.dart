import 'package:skripsi_undone/data/dzikirSetelahSholat.dart';
import 'package:flutter/material.dart';
import 'package:skripsi_undone/color.dart';

class DzikirSetelahSholat extends StatelessWidget {
  const DzikirSetelahSholat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: orangeColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Color(0xff539165),
                  ),
                  Expanded(
                      child: Text(
                    'Dzikir Setelah sholat',
                    style: greenPoppins.copyWith(fontSize: 20),
                  ))
                ],
              ),
              Expanded(
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listDzikirAfterPray.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(edge),
                          padding: EdgeInsets.all(edge),
                          decoration: BoxDecoration(
                              color: Color(0xff539165),
                              borderRadius: BorderRadius.circular(20)),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  listDzikirAfterPray[index].title,
                                  style: orangePoppins.copyWith(fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  listDzikirAfterPray[index].arabic,
                                  style: whiteNormal.copyWith(fontSize: 20),
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  listDzikirAfterPray[index].translate,
                                  style: whiteNormal.copyWith(fontSize: 14),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  listDzikirAfterPray[index].arabLatin,
                                  style: whiteNormal.copyWith(fontSize: 14),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
