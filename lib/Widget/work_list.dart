import 'package:flutter/material.dart';
import 'package:flutter_app_final_project/Widget/work_tile.dart';
import 'package:flutter_app_final_project/models/WorkRepository.dart';
import 'package:provider/provider.dart';

class WorkList extends StatelessWidget {
  const WorkList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WorkRepository workRepository= Provider.of<WorkRepository>(context);

    return ListView.builder(
     itemCount: workRepository.workCount(),
      itemBuilder: (context,index){
       var work= workRepository.works[index];
       return WorkTile(
          title: work.title,
          isDone: work.isDone,
          checkboxClicked: (value){
            workRepository.toggleWork(work);},
       longPress: (){
            workRepository.deleteWork(work);
       },);

    }, //longPress: (){


      );
  }
}

