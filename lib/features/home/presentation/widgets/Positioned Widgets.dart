import 'package:flutter/material.dart';

Widget positionWidget(double top, double left, double right , double padding,
    String image, double heightPic, double widthPic) {
  return Positioned(
    top: top,
    left: left,
    right: right,
    child: Padding(
      padding: EdgeInsets.all(padding),
      child: Image.asset(
        image,
        height: heightPic,
        width: widthPic,
      ),
    ),
  );
}
