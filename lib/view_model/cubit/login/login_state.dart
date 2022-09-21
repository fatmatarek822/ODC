import 'package:odc_project/model/login_model.dart';

abstract class LoginState {}
class LoginInitial extends LoginState{}

class LoginSuccess extends LoginState{
  final LoginModel loginModel;

  LoginSuccess(this.loginModel);
}

class LoginError extends LoginState{}


