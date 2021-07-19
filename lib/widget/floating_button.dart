import 'package:flutter/material.dart';
import 'package:konsultasi_dokter/theme.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type Message ...',
              style: titleTextStyle.copyWith(
                fontSize: 14,
                color: greyColor,
              ),
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.chevron_right,
                  color: whiteColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
