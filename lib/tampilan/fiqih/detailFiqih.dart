import 'package:skripsi_undone/data/data_fiqih.dart';
import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';

class DetailScreenFiqih extends StatelessWidget {
  const DetailScreenFiqih({Key? key, required this.data}) : super(key: key);

  final ModelFiqih data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: Text(
          data.titleCover,
          style: purplePoppins.copyWith(fontSize: 20),
        ),
        iconTheme: IconThemeData(color: purpleColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(18),
              margin: EdgeInsets.symmetric(horizontal: edge, vertical: edge),
              decoration: BoxDecoration(
                  color: purpleColor, borderRadius: BorderRadius.circular(28)),
              child: Column(
                children: [
                  Text(
                    data.title,
                    style: orangePoppins.copyWith(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    data.translate,
                    style: orangePoppins.copyWith(fontSize: 18),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            //if else bisa pakai ? :
            (data.title2 == null)
                ? Container()
                : Container(
                    padding: EdgeInsets.all(18),
                    margin:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(28)),
                    child: Column(
                      children: [
                        Text(
                          (data.title2 ?? '').isEmpty ? '' : data.title2!,
                          style: orangePoppins.copyWith(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          (data.translate2 ?? '').isEmpty
                              ? ''
                              : data.translate2!,
                          style: orangePoppins.copyWith(fontSize: 18),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
            (data.title3 == null)
                ? Container()
                : Container(
                    padding: EdgeInsets.all(18),
                    margin:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          (data.title3 ?? '').isEmpty ? '' : data.title3!,
                          style: orangePoppins.copyWith(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          (data.translate3 ?? '').isEmpty
                              ? ''
                              : data.translate3!,
                          style: orangePoppins.copyWith(fontSize: 18),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
            (data.title4 == null)
                ? Container()
                : Container(
                    padding: EdgeInsets.all(18),
                    margin:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          (data.title4 ?? '').isEmpty ? '' : data.title4!,
                          style: orangePoppins.copyWith(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          (data.translate4 ?? '').isEmpty
                              ? ''
                              : data.translate4!,
                          style: orangePoppins.copyWith(fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'No 1',
                          style: orangePoppins.copyWith(fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                        Image.asset('assets/wudhu/1.png'),
                        Text(
                          "Membaca basmalah sambil membersihkan kedua telapak tangan sampai pergelangan",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                      ],
                    ),
                  ),
            (data.title4 == null)
                ? Container()
                : Container(
                    padding: EdgeInsets.all(18),
                    margin:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          "No.2",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/wudhu/2.png'),
                        Text(
                          "Berkumur-kumur",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                      ],
                    ),
                  ),
            (data.title4 == null)
                ? Container()
                : Container(
                    padding: EdgeInsets.all(18),
                    margin:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          "No.3",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/wudhu/3.png'),
                        Text(
                          "Membersihkan lubang hidung",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                      ],
                    ),
                  ),
            (data.title4 == null)
                ? Container()
                : Container(
                    padding: EdgeInsets.all(18),
                    margin:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          "No.4",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/wudhu/4.png'),
                        Text(
                          "Membasuh Muka dan membaca niat wudhu",
                          style: orangePoppins.copyWith(fontSize: 19),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
            (data.title4 == null)
                ? Container()
                : Container(
                    padding: EdgeInsets.all(18),
                    margin:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          "No.5",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/wudhu/5.png'),
                        Text(
                          "Mengaliri air ke kedua tangan sampai siku",
                          style: orangePoppins.copyWith(fontSize: 19),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
            (data.title4 == null)
                ? Container()
                : Container(
                    padding: EdgeInsets.all(18),
                    margin:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          "No.6",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/wudhu/6.png'),
                        Text(
                          "Membasuh sebagian rambut",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                      ],
                    ),
                  ),
            (data.title4 == null)
                ? Container()
                : Container(
                    padding: EdgeInsets.all(18),
                    margin:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          "No.7",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/wudhu/7.png'),
                        Text(
                          "Mengusap kedua telinga",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                      ],
                    ),
                  ),
            (data.title4 == null)
                ? Container()
                : Container(
                    padding: EdgeInsets.all(18),
                    margin:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          "No.8",
                          style: orangePoppins.copyWith(fontSize: 19),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/wudhu/8.png'),
                        Text(
                          "Membasuh kedua kaki sampai mata kaki",
                          style: orangePoppins.copyWith(fontSize: 19),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
