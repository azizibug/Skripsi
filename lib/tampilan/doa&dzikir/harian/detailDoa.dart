import 'package:skripsi_undone/data/data_Doa.dart';
import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';

class DetailScreenDoa extends StatelessWidget {
  const DetailScreenDoa({Key? key, required this.doa}) : super(key: key);

  final ModelDoa doa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: Text(
          doa.titleCover,
          style: purplePoppins.copyWith(fontSize: 16),
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
                    doa.title,
                    style: orangePoppins.copyWith(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    doa.arabic,
                    style: orangePoppins.copyWith(fontSize: 20),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    doa.latin,
                    style: orangePoppins.copyWith(fontSize: 14),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    doa.translate,
                    style: orangePoppins.copyWith(fontSize: 14),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            //if else bisa pakai ? :
            (doa.title2 == null)
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
                          (doa.title2 ?? '').isEmpty ? '' : doa.title2!,
                          style: orangePoppins.copyWith(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          (doa.arabic2 ?? '').isEmpty ? '' : doa.arabic2!,
                          style: orangePoppins.copyWith(fontSize: 20),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          (doa.latin2 ?? '').isEmpty ? '' : doa.latin2!,
                          style: orangePoppins.copyWith(fontSize: 14),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          (doa.translate2 ?? '').isEmpty ? '' : doa.translate2!,
                          style: orangePoppins.copyWith(fontSize: 14),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
