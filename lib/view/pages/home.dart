import 'package:flutter/material.dart';
import 'package:odc_project/view/components/core/core_components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          OrangeText(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 40, right: 20,left: 20),
              child: GridView.count(
               // primary: false,
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: <Widget>[


                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                        width: 200,
                        height: 110,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                          ),
                          elevation: 20,

                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[300],
                              child: Icon(Icons.menu_book_outlined,color: Colors.orange,size: 50,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text('Lectures'),
                          ),

                        ],
                      ),


                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                        width: 200,
                        height: 110,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                          ),
                          elevation: 20,

                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[300],
                              child: Icon(Icons.menu_book_outlined,color: Colors.orange,size: 50,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text('Lectures'),
                          ),

                        ],
                      ),


                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                        width: 200,
                        height: 110,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                          ),
                          elevation: 20,

                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[300],
                              child: Icon(Icons.menu_book_outlined,color: Colors.orange,size: 50,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text('Lectures'),
                          ),

                        ],
                      ),


                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                        width: 200,
                        height: 110,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                          ),
                          elevation: 20,

                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[300],
                              child: Icon(Icons.menu_book_outlined,color: Colors.orange,size: 50,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text('Lectures'),
                          ),

                        ],
                      ),


                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                        width: 200,
                        height: 110,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                          ),
                          elevation: 20,

                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[300],
                              child: Icon(Icons.menu_book_outlined,color: Colors.orange,size: 50,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text('Lectures'),
                          ),

                        ],
                      ),


                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Container(
                        width: 200,
                        height: 110,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                          ),
                          elevation: 20,

                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[300],
                              child: Icon(Icons.menu_book_outlined,color: Colors.orange,size: 50,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text('Lectures'),
                          ),

                        ],
                      ),


                    ],
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );




  }
}
