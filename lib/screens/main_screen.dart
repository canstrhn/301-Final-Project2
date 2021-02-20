import 'package:flutter/material.dart';
import 'package:flutter_app_final_project/screens/calculator_screen.dart';
import 'package:flutter_app_final_project/screens/grade_screen.dart';
import 'package:flutter_app_final_project/screens/todo_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  PageController _pageController= PageController();
  List <Widget> _screens=[
    CalculatorScreen(), GradeScreen(), TodoScreen()
  ];
  int _selectedIndex=0;
  void _onPageChanged( int index){
    setState(() {
      _selectedIndex= index;
    });
  }
  void _onItemTapped( int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate_sharp,
              color: _selectedIndex==0 ? Colors.indigo: Colors.grey),
              label: "Grade Calculator",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.note,
                  color: _selectedIndex==1 ? Colors.blueGrey: Colors.grey),
              label:"Grade Book"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.pending,
                  color: _selectedIndex==2 ? Colors.blueAccent: Colors.grey),
              label:"To Do List"
          ),
        ],
      ),
    );
  }
}