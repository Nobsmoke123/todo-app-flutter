import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {

    TaskCheckbox({ this.isChecked, this.toggleCheckboxState });

    final bool isChecked;

    final Function toggleCheckboxState;

    @override
    Widget build(BuildContext context) {
        return Checkbox(
            value: isChecked,
            onChanged: toggleCheckboxState,
            activeColor: Colors.lightBlueAccent,
        );
    }
}