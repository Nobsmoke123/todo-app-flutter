import 'package:flutter/material.dart';
import './task_checkbox.dart';


class TaskTile extends StatelessWidget {

  final bool isChecked;

  final String title;

  final Function toggleCheckboxState;

  TaskTile({ this.isChecked, this.title, this.toggleCheckboxState });

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(
        '$title',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          value: isChecked,
          onChanged: toggleCheckboxState,
          activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
