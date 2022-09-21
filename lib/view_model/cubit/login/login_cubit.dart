import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/model/login_model.dart';
import 'package:odc_project/view_model/cubit/login/login_state.dart';
import 'package:odc_project/view_model/network/dio_helper.dart';
import 'package:odc_project/view_model/network/end_point.dart';


class LoginCubit extends Cubit<LoginState>{
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  LoginModel? model;

  Future<void> LoginEmail()async{
    var json ={
      'email': emailController.text.toString(),
      'password': PasswordController.text.toString(),
    };

    await DioHelper.postData(url: loginEndPoint, data: json,).then((value) {
      model =LoginModel.fromJson(value.data);
      print(value.data);
      LoginModel.fromJson(value.data);
      emit(LoginSuccess(model!));
    }).catchError((error)
    {
      print(error.toString());
      print('error');
      emit(LoginError());
    });
  }

 
}