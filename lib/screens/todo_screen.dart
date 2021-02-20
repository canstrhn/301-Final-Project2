import 'package:flutter/material.dart';
import 'package:flutter_app_final_project/screens/add_course_screen.dart';
import 'package:flutter_app_final_project/Widget/work_list.dart';
 class TodoScreen extends StatefulWidget {
   @override
   _TodoScreenState createState() => _TodoScreenState();
 }

 class _TodoScreenState extends State<TodoScreen> {
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       backgroundColor: Colors.blueAccent,
       body:Column(
         children: [
           Container(
             padding: EdgeInsets.only(top: 50, right: 25, left: 25,
                 bottom: 25),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               //mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 CircleAvatar(
                   child: Icon(Icons.pending,
                       size: 50,
                       color: Colors.blueAccent),
                   radius: 40,
                   backgroundColor: Colors.white60,
                 ), SizedBox(width: 15 ),
                 Text('To Do List',
                   style:TextStyle(fontSize: 32,fontWeight: FontWeight.bold,
                       color: Colors.white60), ),


               ],
             ),
           ),Expanded(child: Container(
             padding: EdgeInsets.only(top:18.0, left:22.0,right: 20.0),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                 topLeft:  Radius.circular(80.0),
               ),
               color: Colors.white60,
             ),
            child: WorkList(),

           ),
           ),
         ],
       ),


       floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.blueAccent,
       child: Icon(Icons.add),
       foregroundColor: Colors.white60,
       onPressed: (){print('buttn pressed');
       showModalBottomSheet(context: context, builder: (context)=> AddCourseScreen());
       },
     ),
     );
   }
 }


