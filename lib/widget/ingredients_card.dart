import 'package:flutter/material.dart';
import 'package:konsultasi_dokter/theme.dart';

class IngredientsCard extends StatelessWidget {
  final String imageUrl;
  final String type;
  final String name;

  IngredientsCard({
    this.imageUrl,
    this.type,
    this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      width: 186,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                width: 70,
                height: 70,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: subTitleTextStyle,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  name,
                  style: titleTextStyle.copyWith(fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
