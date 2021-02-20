import 'package:flutter/material.dart';
import 'package:flutter_app_final_project/models/WorkItem.dart';
import 'package:flutter_app_final_project/models/WorkRepository.dart';
import 'package:provider/provider.dart';
class AddCourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String workTitle;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        color: Colors.grey,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              TextField(
                cursorColor: Colors.blueAccent,
                onChanged: (newText){
                  workTitle= newText;
                  print (newText);},
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueAccent,
                fontSize: 25),
                autofocus: true,
              ),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                  onPressed: (){
                    if(workTitle!= null) {
                      WorkRepository repository = Provider.of<WorkRepository>(
                          context, listen: false);
                      repository.addTask(
                          WorkItem(title: workTitle, isDone: false));
                    }
                    Navigator.of(context).pop();
              },
                  child: Text('Add',
                    style: TextStyle(color: Colors.white60,
                    fontSize: 20),
                  ),

              color: Colors.blueAccent),
            ],
          ),
        )
      ),
    );
  }
}
