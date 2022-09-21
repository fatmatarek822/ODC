import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/cubit/cubit.dart';
import 'package:odc_project/cubit/increment.dart';
import 'package:odc_project/cubit/state.dart';
import 'package:odc_project/view/pages/add_note.dart';
import 'package:odc_project/view/pages/home.dart';
import 'package:odc_project/view/pages/layout.dart';
import 'package:odc_project/view/pages/login.dart';
import 'package:odc_project/view/pages/news.dart';
import 'package:odc_project/view/pages/note.dart';
import 'package:odc_project/view/pages/our_partners.dart';
import 'package:odc_project/view/pages/register.dart';
import 'package:odc_project/view/pages/section.dart';
import 'package:odc_project/view/pages/setting.dart';
import 'package:odc_project/view/pages/splash.dart';
import 'package:odc_project/view/pages/support.dart';
import 'package:odc_project/view_model/network/dio_helper.dart';

Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //List<Widget> views =[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutScreen(),
    );
  }
}




