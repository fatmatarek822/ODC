import 'package:flutter/material.dart';

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
                    'Sign Up',
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
                      label: Text(
                        'Name',
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
                    height: 20,
                  ),
                  TextFormField(
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      label: Text(
                        'E-Mail',
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
                  TextFormField(
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
                  TextFormField(
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      label: Text(
                        'Phone Number',
                      ),
                      labelStyle: TextStyle(color: Colors.grey[600]),
                      enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),focusedBorder: OutlineInputBorder(
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
                  SizedBox(height: 15,),
                  Center(
                    child: Column(
                      children: [
                        Text('Grade',),
                        SizedBox(height: 5,),
                        Container(
                          width: 70,
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
                        SizedBox(height: 20,),
                        Container(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              // style: ElevatedButton.styleFrom(
                              //   primary: Colors.orange, // background
                              //   onPrimary: Colors.yellow, // foreground
                              // ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.orange),
                               // backgroundColor: MaterialStateColor.,
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    // Change your radius here
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white
                                ),
                              ),
                            )),
                        SizedBox(height: 20,),
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
                            Text('OR',style: TextStyle(fontSize: 15),),
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
                        SizedBox(height: 20,),
                        Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.orange),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))),
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
