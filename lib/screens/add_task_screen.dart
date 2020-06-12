import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './../models/task_data.dart';
import './../models/task.dart';

String newTask;

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
        color: Color(0xFF757575),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0)
                ),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                    Text(
                        'Add Task',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w500,
                        ),
                    ),
                    TextField(
                        autofocus: true,
                        textAlign: TextAlign.center,
                        onChanged: (newText){
                            newTask = newText;
                        },
                    ),
                    SizedBox(
                        height: 20.0,
                    ),
                    FlatButton(
                        color: Colors.lightBlueAccent,
                        child: Text(
                            'Add',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0
                            ),
                        ),
                        onPressed: (){
                            Provider.of<TaskData>(context).updateTask(newTask);
                            Navigator.pop(context);
                        },
                    ),
                ],
            ),
        ),
    );
  }
}
