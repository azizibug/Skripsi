import 'package:skripsi_undone/data/data_fiqih.dart';
import 'package:skripsi_undone/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'detailFiqih.dart';

class FiqihScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: indigoAccentColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.indigo,
                  )),
              Row(
                children: [
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(left: edge),
                    child: Text(
                      'Fiqih Dasar',
                      style: blacksPoppins.copyWith(fontSize: 28),
                      maxLines: 2,
                    ),
                  ),
                  Flexible(
                      child: Image.asset(
                    'assets/fiqh.png',
                    width: 100,
                  ))
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  itemCount: dataListDoa.length,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                  itemBuilder: (context, index) {
                    return Transform.translate(
                      offset: Offset(0.0, index.isOdd ? 00 : 0.0),
                      child: itemFiqih(context, index),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget itemFiqih(BuildContext context, int index) {
    ModelFiqih data = dataListDoa[index];
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreenFiqih(
                      data: data,
                    )));
      },
      child: Container(
        height: 250,
        padding: EdgeInsets.all(edge),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.indigo),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(data.imageCover),
            SizedBox(
              height: 10,
            ),
            Text(
              data.titleCover,
              style: whiteNormal.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
