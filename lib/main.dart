import 'package:flutter/material.dart';
import 'package:odc_project/modules/setting.dart';
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
      home: SectionScreen(),
    );
  }
}
