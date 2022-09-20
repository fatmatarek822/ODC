import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/core/resourses/color_manager.dart';
import 'package:odc_project/model/login_model.dart';
import 'package:odc_project/view/components/core/core_components.dart';
import 'package:odc_project/view/components/pages_components/authentication.dart';
import 'package:odc_project/view_model/cubit/login/login_cubit.dart';
import 'package:odc_project/view_model/cubit/login/login_state.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
       listener: (context, state){

       },
        builder: (context, state)
        {

          LoginCubit cubit = LoginCubit.get(context);

          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    OrangeText(),
                    SizedBox(
                      height: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultFormField(
                          type: TextInputType.emailAddress,
                          label: 'E-mail',
                          prefix: Icons.email_outlined,
                          controller: cubit.emailController,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultFormField(
                          isPassword: true,
                          type: TextInputType.visiblePassword,
                          label: 'Password',
                          suffix: Icons.remove_red_eye_outlined,
                          controller: cubit.PasswordController,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Forget Password?',
                          style: TextStyle(color: Colors.orange),
                        ),
                        const SizedBox(
                          height: 40,
                        ),


                        DefaultElvatedButton(
                            text: 'Login', ontap: ()
                        {
                           cubit.LoginEmail();
                        }),


                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Divider(
                                height: 5,
                                indent: 15,
                                endIndent: 15,
                                color: Colors.black26,
                              ),
                            ),
                            Text(
                              'OR',
                              style: TextStyle(fontSize: 15),
                            ),
                            Expanded(
                              child: Divider(
                                height: 5,
                                indent: 15,
                                endIndent: 15,
                                color: Colors.black26,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DefaultOutlineButton(text: 'Sign Up'),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
