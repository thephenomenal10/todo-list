import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoList/models/task.dart';
import 'package:todoList/models/tasks_data.dart';
import 'package:todoList/screens/add_task_screen.dart';
import 'package:todoList/widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = Provider.of<TaskData>(context).tasks;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: AddTaskScreen())),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 40, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "TODO",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      wordSpacing: 1),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  tasks.length.toString() + " Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      wordSpacing: 1),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}
