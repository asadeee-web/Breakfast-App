import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/models/others/base_view_model.dart';

class DietModel extends BaseViewModel {
  String name;
  String iconpath;
  String level;
  String duration;
  String Calorie;
  Color boxcolor;
  bool viewisslected;
  DietModel(
      {required this.name,
      required this.Calorie,
      required this.duration,
      required this.iconpath,
      required this.level,
      required this.viewisslected,
      required this.boxcolor});
}
