import 'package:flutter/material.dart';
class AddCourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        color: Colors.black54,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add New Course',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25,
                  )),
              TextField(
                cursorColor: Colors.indigo,
                onChanged: (newText){print (newText);},
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.indigo,
                fontSize: 25),
                autofocus: true,
              ),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                  onPressed: (){
                    
                    Navigator.of(context).pop();
              },
                  child: Text('Add',
                    style: TextStyle(color: Colors.white60,
                    fontSize: 20),
                  ),
              color: Colors.indigo),
            ],
          ),
        )
      ),
    );
  }
}
