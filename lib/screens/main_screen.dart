import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter_app_final_project/screens/add_course_screen.dart';

class MainScreen extends StatefulWidget{

  @override
  _MainScreenState createState()=> _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {

  String valueChoose;
  String _letterGrade ="";
  List listItem=["AA", "BA","BB","CA","CC","DC","DD","F"];
  final TextEditingController _coursename = TextEditingController();
  final TextEditingController _midtermscore = TextEditingController();
  final TextEditingController _finalscore = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(

   backgroundColor: Colors.black54,
     body:Column(
       children: [
         Container(
           padding: EdgeInsets.only(top: 50, right: 25, left: 25,
           bottom: 25),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             //mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('SPA Calculator',
               style:TextStyle(fontSize: 40,
                   color: Colors.white60), ),
               SizedBox(height: 30 ),
               CircleAvatar(
                 child: Icon(Icons.calculate,
                 size: 50,
                 color: Colors.indigo),
                 radius: 40,
                 backgroundColor: Colors.white60,
               ),
             ],
           ),
         ),Expanded(child: Container(
           padding: EdgeInsets.only(top:25.0, left:40.0,right: 25.0),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.only(
               topLeft:  Radius.circular(80.0),
             ),
             color: Colors.white60,
           ),

           child: Column(
             children: [
              Container(
              child: TextField(
                controller: _coursename,
                decoration: InputDecoration(
                labelText: "Enter Course Name"
                 ),
               ),
             ),
              Container(
                padding: EdgeInsets.only(top:25.0),
                child: TextField(
                  controller: _midtermscore,
                decoration: InputDecoration(
                  labelText: "Midterm Score"
                       ),
                     ),
                   ),
              Container(
                padding: EdgeInsets.only(top:25.0,bottom: 25.0),
              child: TextField(
                controller: _finalscore,
              decoration: InputDecoration(
              labelText: "Final Score"
                 ),
               ),
             ),
               Flexible(fit: FlexFit.loose,
               child: FlatButton(
                 onPressed: _letterCalculation,
                child: Text("Calculate",
                style: TextStyle(fontSize: 20),),
                 color: Colors.indigo,
                 textColor: Colors.white60,
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(18.0),
                 ),
                 minWidth: 160,
                 height: 40,
               ),),
              letterGradesWidget(_letterGrade),

            ]
           ),
          ),
         ),
        ],
     ),


     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.indigo,
       child: Icon(Icons.add),
       foregroundColor: Colors.white60,
       onPressed: (){print('buttn pressed');
       showModalBottomSheet(context: context, builder: (context)=> AddCourseScreen());
       },
     ),
   );
  }
  void _letterCalculation(){
    double T=0.0;
    int M= int.parse(_midtermscore.text);
    int F=int.parse(_finalscore.text);
    String letter="";
    T= ((M*40/100) +(F*60/100));
    if( T<=50){
      letter="F";
    }else if( T>50&& T<=60){
      letter="DD";
    }
    else if( T>60&& T<=70){
      letter="DC";
    }else if( T>70&& T<=75){
      letter="CC";
    }else if( T>75&& T<=80){
      letter="CB";
    }else if( T>80&& T<=85){
      letter="BB";
    }else if( T>85&& T<=90){
      letter="BA";
    }else if( T>90&& T<=100){
      letter="AA";
    }
    _letterGrade= letter;
    setState(() {

    });
  }
  Widget letterGradesWidget(letterGrade){
    bool canShow= false;
    String _letterGrade= letterGrade;
    if(_letterGrade.length>0){
      canShow= true;
    }
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: canShow ? Column(children: [
        Text("Estimated Letter ""\nGrade is",textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black54, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),Container(
          child: Text(_letterGrade,
          style: TextStyle(color: Colors.black54, fontSize: 50.0, fontWeight: FontWeight.bold),),)
        ],) : Container()
    );
  }
}