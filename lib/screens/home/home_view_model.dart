// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/core/const/strings.dart';

// class CategoryModel {
//   String name;
//   String iconPath;
//   Color boxColor;

//   CategoryModel(
//       {required this.boxColor, required this.iconPath, required this.name});
//   List<CategoryModel> getcategories() {
//     List<CategoryModel> categories = [];
//     categories.add(CategoryModel(
//         boxColor: Color(0xff92a3fd),
//         iconPath: "$icons/plate.svg",
//         name: "Salad"));

//         categories.add(CategoryModel(
//         boxColor: Color(0xff92a3fd),
//         iconPath: "$icons/plate.svg",
//         name: "Salad"));

//         categories.add(CategoryModel(
//         boxColor: Color(0xff92a3fd),
//         iconPath: "$icons/plate.svg",
//         name: "Salad"));

//         categories.add(CategoryModel(
//         boxColor: Color(0xff92a3fd),
//         iconPath: "$icons/plate.svg",
//         name: "Salad"));

//         categories.add(CategoryModel(
//         boxColor: Color(0xff92a3fd),
//         iconPath: "$icons/plate.svg",
//         name: "Salad"));
//     return categories;
//   }
// }
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_2/core/constants/strings.dart';
import 'package:flutter_application_2/core/models/category_model.dart';
import 'package:flutter_application_2/core/models/diet_model.dart';
import 'package:flutter_application_2/core/models/others/base_view_model.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class HomeCategoryModel extends BaseViewModel {
  List<CategoryModel> listcategory = [
    CategoryModel(
        boxColor: Color(0xff92a3fd),
        iconPath: "assets/icons/plate.svg",
        name: "Salad"),
    CategoryModel(
        boxColor: Color(0xffEEA4CE),
        iconPath: "assets/icons/pancakes.svg",
        name: "Cake"),
    CategoryModel(
        boxColor: Color(0xff9DCEFF),
        iconPath: "assets/icons/pie.svg",
        name: "Pie"),
    CategoryModel(
        boxColor: Color(0xffEEA4CE),
        iconPath: "assets/icons/orange-snacks.svg",
        name: "Smoothies"),
  ];
  List<DietModel> listdiet = [
    DietModel(
        boxcolor: Color(0xff92a3fd),
        name: "Honey Pancake",
        Calorie: "180kCal",
        duration: "30 mins",
        iconpath: "assets/icons/honey-pancakes.svg",
        level: "Easy",
        viewisslected: true),
    DietModel(
        boxcolor: Color(0xffEEA4CE),
        name: "Canai Bread",
        Calorie: "230kCal",
        duration: "20 mins",
        iconpath: "assets/icons/canai-bread.svg",
        level: "Easy",
        viewisslected: false),
  ];
}
