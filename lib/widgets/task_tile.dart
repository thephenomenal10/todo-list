import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function longPressCallback;

  const TaskTile(
      {Key key,
      this.isChecked,
      this.taskTitle,
      this.checkBoxCallback,
      this.longPressCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      leading: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue) {
          checkBoxCallback(newValue);
        },
      ),
    );
  }
}
