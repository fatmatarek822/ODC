import 'package:flutter/material.dart';
import 'package:odc_project/view/components/pages_components/authentication.dart';

class AddNote extends StatelessWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
        title: Text('Add Note',style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  label: Text(
                    'Title',
                  ),
                  labelStyle: TextStyle(color: Colors.grey[600]),
                  enabledBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.red,
                    ),
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
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
                    'Date',
                  ),
                  labelStyle: TextStyle(color: Colors.grey[600]),
                  enabledBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.red,
                    ),
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                maxLines: 5,
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  label: Text(
                    'Date',
                  ),
                  labelStyle: TextStyle(color: Colors.grey[600]),
                  enabledBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.red,
                    ),
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey),

                ),
                onPressed: (){},
                child: Text('+ Add'),),
            ],
          ),
        ),
      ),
    );
  }
}
