import 'package:flutter/material.dart';

class WorkTile extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function checkboxClicked;
  final Function longPress;
  const WorkTile({
    this.title,
    this.isDone,
    this.checkboxClicked,
    this.longPress,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.blueAccent),),
      trailing: Checkbox(
          value: isDone,
          activeColor: Colors.blueAccent,
          onChanged: (value){

          }
      ),
    );
  }
}