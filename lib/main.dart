import 'package:flutter/material.dart';
import 'package:odc_project/modules/login.dart';
import 'package:odc_project/modules/new.dart';
import 'package:odc_project/modules/register.dart';
import 'package:odc_project/modules/setting.dart';
import 'package:odc_project/modules/splash.dart';
import 'package:odc_project/modules/support.dart';
import 'modules/section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //List<Widget> views =[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}




