import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/model/login_model.dart';
import 'package:odc_project/view_model/cubit/login/login_state.dart';
import 'package:odc_project/view_model/network/dio_helper.dart';
import 'package:odc_project/view_model/network/end_points.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  LoginModel? model;

  Future<void> LoginEmail()async{

    await DioHelper.postData(url: loginEndPoint, data:  {
      'email':emailController.text.toString(),
      'password':PasswordController.text.toString(),
    },).then((value) {
      model =LoginModel.fromJson(value.data);
      print(value.data);
      emit(LoginSuccess());
    }).catchError((error)
    {
      print(error.toString());
      print('error');
      emit(LoginError());
    });
  }

 
}