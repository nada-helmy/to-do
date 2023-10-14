import 'package:flutter/material.dart';
import 'package:todo_app/styles/colors.dart';

class TskBottomsheet extends StatefulWidget {
  TskBottomsheet({super.key});

  @override
  State<TskBottomsheet> createState() => _TskBottomsheetState();
}

class _TskBottomsheetState extends State<TskBottomsheet> {
  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Add new task',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: ColoR.darkblue)),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: ColoR.darkblue),
                          decoration: InputDecoration(
                            hintText: 'enter your task',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: UnderlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: ColoR.darkblue),
                          decoration: InputDecoration(
                            hintText: 'enter your description',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: UnderlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'select date',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: ColoR.darkblue),
                  ),
                  InkWell(
                    onTap: () {
                      showCalender();
                    },
                    child: Text('${selectedDate.toString().substring(0, 10)}',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.blueAccent)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey.shade50),
                      child: Text('Add',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: ColoR.darkblue)))
                ],
              )),
        ],
      ),
    );
  }

  void showCalender() async {
    var date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (date != null) {
      selectedDate = date;
    }
    setState(() {});
  }
}
