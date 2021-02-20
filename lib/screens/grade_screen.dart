import 'dart:ui';

import 'package:flutter/material.dart';
class GradeScreen extends StatefulWidget {
  @override
  _GradeScreenState createState() => _GradeScreenState();
}

class _GradeScreenState extends State<GradeScreen> {
  String valueChoose,valueChoose1,valueChoose2,valueChoose3,valueChoose4,
  valueChoose5;
  List listItem= [
   "AA","BA", "BB","CB","CC","DC","DD","F"
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 50, right: 25, left: 25,
                  bottom: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.note,
                        size: 50,
                        color: Colors.blueGrey),
                    radius: 40,
                    backgroundColor: Colors.white60,
                  ), SizedBox(width: 15 ),
                  Text('Grade Book',
                    style:TextStyle(fontSize: 32,fontWeight: FontWeight.bold,
                        color: Colors.white60), ),
                ],
              ),
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
        children: [Container(
          child: Row(
            children:[ Expanded(
              child: TextField(
              decoration: InputDecoration(
              labelText: "Enter Course Name",
               ),
              ),
            ),SizedBox(width: 15),
           Container(
             padding: EdgeInsets.only( left:10.0),
             decoration: BoxDecoration(
               border: Border.all(color: Colors.blueGrey,width: 1),
               borderRadius: BorderRadius.circular(15)
             ),
             child: DropdownButton(
              hint: Text("Select"),
              dropdownColor: Colors.blueGrey,
              icon: Icon(Icons.arrow_drop_down),

              value: valueChoose,
              onChanged: (newValue){
                setState(() {
                  valueChoose= newValue;
                });
    },
                items: listItem.map((valueItem){
                  return DropdownMenuItem(
                  value:valueItem,
                  child:Text(valueItem) ,
                  );
                 }).toList(),
                  ),
           )
                 ] ),
        ),
          SizedBox(height: 15),
          Container(
            child: Row(
                children:[ Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Course Name",
                    ),
                  ),
                ),SizedBox(width: 15),
                  Container(
                    padding: EdgeInsets.only( left:10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 1),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: DropdownButton(
                      hint: Text("Select"),
                      dropdownColor: Colors.blueGrey,
                      icon: Icon(Icons.arrow_drop_down),

                      value: valueChoose1,
                      onChanged: (newValue){
                        setState(() {
                          valueChoose1= newValue;
                        });
                      },
                      items: listItem.map((valueItem){
                        return DropdownMenuItem(
                          value:valueItem,
                          child:Text(valueItem) ,
                        );
                      }).toList(),
                    ),
                  )
                ] ),

          ),
          SizedBox(height: 15),
          Container(
            child: Row(
                children:[ Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Course Name",
                    ),
                  ),
                ),SizedBox(width: 15),
                  Container(
                    padding: EdgeInsets.only( left:10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 1),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: DropdownButton(
                      hint: Text("Select"),
                      dropdownColor: Colors.blueGrey,
                      icon: Icon(Icons.arrow_drop_down),

                      value: valueChoose2,
                      onChanged: (newValue){
                        setState(() {
                          valueChoose2= newValue;
                        });
                      },
                      items: listItem.map((valueItem){
                        return DropdownMenuItem(
                          value:valueItem,
                          child:Text(valueItem) ,
                        );
                      }).toList(),
                    ),
                  )
                ] ),

          ),
          SizedBox(height: 15),
          Container(
            child: Row(
                children:[ Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Course Name",
                    ),
                  ),
                ),SizedBox(width: 15),
                  Container(
                    padding: EdgeInsets.only( left:10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 1),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: DropdownButton(
                      hint: Text("Select"),
                      dropdownColor: Colors.blueGrey,
                      icon: Icon(Icons.arrow_drop_down),

                      value: valueChoose3,
                      onChanged: (newValue){
                        setState(() {
                          valueChoose3= newValue;
                        });
                      },
                      items: listItem.map((valueItem){
                        return DropdownMenuItem(
                          value:valueItem,
                          child:Text(valueItem) ,
                        );
                      }).toList(),
                    ),
                  )
                ] ),

          ),
          SizedBox(height: 15),
          Container(
            child: Row(
                children:[ Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Course Name",
                    ),
                  ),
                ),SizedBox(width: 15),
                  Container(
                    padding: EdgeInsets.only( left:10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 1),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: DropdownButton(
                      hint: Text("Select"),
                      dropdownColor: Colors.blueGrey,
                      icon: Icon(Icons.arrow_drop_down),

                      value: valueChoose4,
                      onChanged: (newValue){
                        setState(() {
                          valueChoose4= newValue;
                        });
                      },
                      items: listItem.map((valueItem){
                        return DropdownMenuItem(
                          value:valueItem,
                          child:Text(valueItem) ,
                        );
                      }).toList(),
                    ),
                  )
                ] ),

          ),
          SizedBox(height: 15),
          Container(
            child: Row(
                children:[ Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Course Name",
                    ),
                  ),
                ),SizedBox(width: 15),
                  Container(
                    padding: EdgeInsets.only( left:10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 1),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: DropdownButton(
                      hint: Text("Select"),
                      dropdownColor: Colors.blueGrey,
                      icon: Icon(Icons.arrow_drop_down),

                      value: valueChoose5,
                      onChanged: (newValue){
                        setState(() {
                          valueChoose5= newValue;
                        });
                      },
                      items: listItem.map((valueItem){
                        return DropdownMenuItem(
                          value:valueItem,
                          child:Text(valueItem) ,
                        );
                      }).toList(),
                    ),
                  )
                ] ),

          ),

          ]
          ),),)
        ],
      ),
    );
  }
  }

