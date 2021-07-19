import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final double defaultMargin = 20.0;

Color backgroundColor = Color(0XFFF8F9FE);
Color whiteColor = Color(0XFFFFFFFF);
Color blackTitleColor = Color(0XFF373246);
Color greyColor = Color(0XFFB4B4B4);
Color blueColor = Color(0XFF4B7BF9);
Color blackChatColor = Color(0XFF182C4C);
Color pinkColor = Color(0XFFFF8A8A);
Color blueChatColor = Color(0XFFE3EBFF);

TextStyle titleTextStyle = GoogleFonts.poppins(
  color: blackTitleColor,
  fontWeight: FontWeight.w600,
  fontSize: 14,
);

TextStyle subTitleTextStyle = GoogleFonts.poppins(
  color: greyColor,
  fontWeight: FontWeight.w400,
  fontSize: 14,
);

TextStyle chatTextStyle = GoogleFonts.poppins(
  color: blackChatColor,
  fontWeight: FontWeight.w400,
  fontSize: 14,
);
