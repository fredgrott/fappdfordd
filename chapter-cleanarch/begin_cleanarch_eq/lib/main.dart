import 'package:begin_cleanarch_eq/logic/app_logic.dart';
import 'package:begin_cleanarch_eq/presentation/features/app/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  AppLogic().init();

  runApp(MyApp());
}
