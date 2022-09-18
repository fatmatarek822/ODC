import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Orange ',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    'Digital Center',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      label: Text(
                        'E-Mail',
                      ),
                      labelStyle: TextStyle(color: Colors.grey[600]),
                      enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.orange,
                      ),
                      label: Text(
                        'Password',
                      ),
                      labelStyle: TextStyle(color: Colors.grey[600]),
                      enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.orange, width: 2.0),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.orange),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange, // b
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),// ackground// foreground
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton(

                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.orange),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
