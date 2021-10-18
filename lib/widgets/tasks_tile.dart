import 'package:flutter/material.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:todoey_app/models/task_data.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxCallback;
  final void Function() longPress;

  TasksTile(
      this.isChecked, this.taskTitle, this.checkboxCallback, this.longPress);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPress,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.blue,
          value: isChecked,
          onChanged: checkboxCallback,
        ));
  }
}
