import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/styles/colors.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          initialDate: DateTime(2020, 4, 20),
          firstDate: DateTime(2019, 1, 15),
          lastDate: DateTime(2020, 11, 20),
          onDateSelected: (date) => print(date),
          leftMargin: 20,
          shrink: true,
          monthColor: Colors.blue,
          dayColor: Colors.blue,
          activeDayColor: Colors.white,
          activeBackgroundDayColor: Colors.amber,
          dotsColor: Colors.orangeAccent,
          selectableDayPredicate: (date) => true,
          locale: 'en_ISO',
        ),
        ListTile(
          title: Card(
            shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)) ,
            child:Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(height:80,
                      width:5 ,
                      color:ColoR.blue),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Text('title',style:Theme.of(context).textTheme.bodySmall!.copyWith(
                      color:ColoR.blue)),
                      Text('description',style:Theme.of(context).textTheme.bodySmall!.copyWith(
                          color:ColoR.blue)),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.done),

                ],
              ),
            ) ,
          ),
        )
      ],
    );

  }
}
