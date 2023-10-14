import 'package:flutter/material.dart';
import 'package:todo_app/styles/colors.dart';
import 'screens/taskScreen/tsk-bottomsheet.dart';
import 'styles/Theme.dart';
import 'screens/settingScreen/settings_tab.dart';
import 'screens/taskScreen/task_tab.dart';

class Home extends StatefulWidget {
  Home({super.key});
  static const String routeName = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> tabs=[
    Tasks(),
    Settings(),
  ];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      extendBody: true,
      appBar: AppBar(
        title:Text('To Do List') ,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index=value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.list,size:35 ),
                label: 'list',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.settings,size:35 ,),
              label: 'settings',
            ),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          taskBottomsheet();
        },
        child: Icon(Icons.add,size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[index],
      ),
    );
  }
  taskBottomsheet(){
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder:(context) =>TskBottomsheet());}

}
