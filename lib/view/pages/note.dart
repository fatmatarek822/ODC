import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
        title: Text('Add Note',style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
      ),

      body: Center(child: Text('There\'s No Data To Show'),),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),backgroundColor: Colors.grey,),
    );
  }
}
