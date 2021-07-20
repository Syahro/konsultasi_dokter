import 'package:flutter/material.dart';
import 'package:konsultasi_dokter/theme.dart';
import 'package:konsultasi_dokter/widget/ingredients_card.dart';

class MedicineDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
                  color: backgroundColor,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(
                        defaultMargin + 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Focused Pill',
                                style: titleTextStyle.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Vitamin C',
                                style: subTitleTextStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '\$20',
                                style: titleTextStyle.copyWith(
                                  fontSize: 20,
                                  color: blueColor,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Text(
                                '/Bottle',
                                style: subTitleTextStyle,
                                textAlign: TextAlign.right,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: whiteColor,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      defaultMargin + 10,
                      0,
                      defaultMargin + 10,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: defaultMargin + 10,
                            right: defaultMargin + 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Description',
                                style: titleTextStyle.copyWith(fontSize: 16),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Vitamin C is a type of vitamin that dissolves in air and has an important role in warding off various diseases.',
                                style: subTitleTextStyle,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Ingrendients',
                                style: titleTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          padding: EdgeInsets.only(left: defaultMargin + 10),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              IngredientsCard(
                                imageUrl: 'assets/ingredients1.png',
                                type: 'Vegetable',
                                name: 'Garlic',
                              ),
                              SizedBox(
                                width: 13,
                              ),
                              IngredientsCard(
                                imageUrl: 'assets/ingredients2.png',
                                type: 'Powder',
                                name: 'Sugar',
                              ),
                              SizedBox(
                                width: defaultMargin + 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 34,
                        ),
                        Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width -
                              (2 * (defaultMargin + 10)),
                          child: RaisedButton(
                            onPressed: () {},
                            color: blueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'Buy this medicine',
                              style: titleTextStyle.copyWith(
                                fontSize: 18,
                                color: whiteColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: whiteColor,
                          size: 35,
                        ),
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
