import 'package:flutter/cupertino.dart';
import 'package:flutter_app_final_project/models/WorkItem.dart';

class WorkRepository extends ChangeNotifier{
  List<WorkItem> works =[];
  WorkRepository(){
  addTask( WorkItem( title:"Math201 Final", isDone: false));
  addTask( WorkItem( title:"TK221 Paper", isDone: true));
  }
  int workCount(){
    return works.length;
  }
  void addTask (WorkItem work){
    works.add(work);
    notifyListeners();
  }
  void toggleWork(WorkItem work){
    work.isDone= !work.isDone;
    notifyListeners();
  }
  void deleteWork(WorkItem work){
    works.remove(work);
    notifyListeners();
  }
}