import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoList/models/task.dart';
import 'package:todoList/models/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTask = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
                onPressed: () {
                  Provider.of<TaskData>(context).addTask(newTask);
                  Navigator.pop(context);
                },
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent)
          ],
        ),
      ),
    );
  }
}
