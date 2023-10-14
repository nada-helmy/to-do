import 'package:flutter/material.dart';
import 'package:todo_app/styles/Theme.dart';
import 'package:todo_app/styles/colors.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings',style:
           Theme.of(context).appBarTheme.titleTextStyle!.copyWith(fontSize:30 )),
      ),
      body:Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Text('language',
              style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                 color:Colors.orangeAccent)),
            SizedBox(height:10,),
            TextFormField(
               decoration: InputDecoration(
                 fillColor:Colors.white ,
                 filled: true,
                 border: OutlineInputBorder(),
                 suffixIcon:Icon(Icons.arrow_drop_down,
                   color:Colors.orangeAccent ,size:30 ,) ,
                 enabledBorder:OutlineInputBorder(
                   borderRadius:BorderRadius.circular(30),
                   borderSide:BorderSide(color:ColoR.blue,width:2)
                 ),
                 focusedBorder:OutlineInputBorder(
                   borderRadius:BorderRadius.circular(30),
                   borderSide:BorderSide(color:ColoR.blue,width:2)
             )
               ),
             ),
            SizedBox(height:50 ,),
            Text('Moode',
                style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color:Colors.orangeAccent)),
            SizedBox(height:10,),
            TextFormField(
              decoration: InputDecoration(
                  fillColor:Colors.white ,
                  filled: true,
                  border: OutlineInputBorder(),
                  suffixIcon:Icon(Icons.arrow_drop_down,
                    color:Colors.orangeAccent ,size:30 ,) ,
                  enabledBorder:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(30),
                      borderSide:BorderSide(color:ColoR.blue,width:2)
                  ),
                  focusedBorder:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(30),
                      borderSide:BorderSide(color:ColoR.blue,width:2)
                  )
              ),
            ),
          ],
        ),
      ) ,
    );

  }
}
