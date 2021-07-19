import 'package:flutter/material.dart';
import 'package:konsultasi_dokter/theme.dart';

class MedicineDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 309,
                ),
                Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            Image.asset(
              'assets/medicine.png',
              height: 309,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin + 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.chevron_left,
                        color: whiteColor,
                        size: 35,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: whiteColor,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
