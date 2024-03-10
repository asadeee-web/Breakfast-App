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
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/strings.dart';
import 'package:flutter_application_2/core/models/category.dart';
import 'package:flutter_application_2/core/models/others/base_view_model.dart';

class HomeCategoryModel extends BaseViewModel {
  List<CategoryModel> listcategory = [
    CategoryModel(
        boxColor: Color(0xff92a3fd),
        iconPath: "$icons/plate.svg",
        name: "Salad"),
    CategoryModel(
        boxColor: Color(0xff92a3fd),
        iconPath: "$icons/plate.svg",
        name: "Salad"),
    CategoryModel(
        boxColor: Color(0xff92a3fd),
        iconPath: "$icons/plate.svg",
        name: "Salad"),
    CategoryModel(
        boxColor: Color(0xff92a3fd),
        iconPath: "$icons/plate.svg",
        name: "Salad"),
    CategoryModel(
        boxColor: Color(0xff92a3fd),
        iconPath: "$icons/plate.svg",
        name: "Salad"),
  ];
}
