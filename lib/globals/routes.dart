import 'package:flutter/material.dart';
import 'package:todo_assignment/home/home_view.dart';

class AppRoutes {
  static const home = "/home";

  static final routes = {
    home: (BuildContext context) => HomeWidget(),
  };
}
