import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      backgroundColor: Color(0xffDFECDB),
      appBar: AppBar(
        backgroundColor:Colors.blueGrey ,
        title:Text('To Do List',style:TextStyle(color:Colors.orangeAccent,fontSize:30) ,) ,

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.list,size:30 ),
              label: 'list',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.settings,size:30 ,),
            label: 'settings',
          ),
        ],
      ),
      floatingActionButton:
         CircleAvatar(
          backgroundColor:Colors.blueGrey ,
          child: Icon(
            Icons.add,size: 30,color:Colors.orangeAccent ,),
        ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center ,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child:Text('my task',style:
              TextStyle(color:Colors.orangeAccent,fontSize:30)),
            decoration: BoxDecoration(
              color:Colors.white
            ),
          )
        ],
      ),
      ),
    );
  }
}
