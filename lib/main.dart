import 'package:flutter/material.dart';
import 'package:flutter_app_final_project/Screens/calculator_screen.dart';
import 'package:flutter_app_final_project/models/WorkRepository.dart';
import 'package:flutter_app_final_project/screens/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<WorkRepository>
      (create: (context)=>WorkRepository(),
      child: MaterialApp(
         home:MainScreen()

    ),
  ),);
}
