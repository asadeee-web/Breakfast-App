import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/strings.dart';
import 'package:flutter_svg/svg.dart';

AppBar appbar() {
  return AppBar(
    scrolledUnderElevation: 0.0,
    backgroundColor: Colors.white,
    centerTitle: true,
    title: const Text(
      "Breakfast",
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    leading: Container(
      child: SvgPicture.asset("assets/icons/Arrow - Left 2.svg"),
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xffF7F8F8), borderRadius: BorderRadius.circular(10)),
    ),
    actions: [
      Container(
        width: 37,
        child: SvgPicture.asset(
          "assets/icons/dots.svg",
          height: 5,
          width: 5,
        ),
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xffF7F8F8), borderRadius: BorderRadius.circular(10)),
      ),
    ],
  );
}
