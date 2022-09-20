import 'package:flutter/material.dart';
import 'package:odc_project/view/components/core/core_components.dart';
import 'package:odc_project/view/components/pages_components/authentication.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  String? dropdownvalue = 'Male';
  List<String> Gender = [
    'Male',
    'Female',
  ];

  String? dropdownvalue1 = 'AUC';
  List<String> University = [
    'AUC',
    'Helwan',
    'Cairo',
  ];

  String? dropdownvalue2 = 'A';
  List<String> Grade = [
    'A',
    'B',
    'C',
    'D',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80,right: 20,left: 20,bottom: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              OrangeText(),
              const SizedBox(
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(type: TextInputType.text, label: 'Name'),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(type: TextInputType.emailAddress, label: 'E-mail'),
                  const SizedBox(
                    height: 10,
                  ),
                  defaultFormField(
                    isPassword: true,
                    type: TextInputType.visiblePassword,
                    label: 'Password',
                    suffix: Icons.remove_red_eye_outlined,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  defaultFormField(type: TextInputType.number, label: 'Phone Number'),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100,
                        child: Column(
                          children: [
                            Text('Gender',),
                            SizedBox(height: 5,),
                            Container(
                              child: DecoratedBox(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.orange),
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                ),
                                child: Center(
                                  child: DropdownButton(
                                    underline: DropdownButtonHideUnderline(child: Container()),
                                    value: dropdownvalue,
                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: Gender.map((String Gender) {
                                      return DropdownMenuItem(
                                        value: Gender,
                                        child: Text(Gender),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],

                        ),
                      ),
                      Container(
                        width: 100,
                        child: Column(
                          children: [
                            Text('University'),
                            SizedBox(height: 5,),
                            Container(
                              child: DecoratedBox(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.orange),
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                ),
                                child: Center(
                                  child: DropdownButton(
                                    underline: DropdownButtonHideUnderline(child: Container()),
                                    value: dropdownvalue1,
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: University.map((String University) {
                                      return DropdownMenuItem(
                                        value: University,
                                        child: Text(University),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue1 = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Column(
                      children: [
                        const Text(
                          'Grade',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 70,
                          child: DecoratedBox(
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.orange),
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            child: Center(
                              child: DropdownButton(
                                underline: DropdownButtonHideUnderline(child: Container()),
                                // Initial Value
                                value: dropdownvalue2,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: Grade.map((String Grade) {
                                  return DropdownMenuItem(
                                    value: Grade,
                                    child: Text(Grade),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue2 = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DefaultElvatedButton(text: 'Sign Up',ontap: (){}),
                        const SizedBox(
                          height: 20,
                        ),
                        HorizonatalDividerWithTexr(),
                        SizedBox(height: 20,),
                        DefaultOutlineButton(text: 'Login'),
                      ],

                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}