import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoList/models/task.dart';
import 'package:todoList/models/tasks_data.dart';
import 'package:todoList/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemCount: tasksData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: tasksData.tasks[index].name,
              isChecked: tasksData.tasks[index].isDone,
              checkBoxCallback: (checkboxState) {
                tasksData.updateTask(tasksData.tasks[index]);
              },
              longPressCallback: () {
                tasksData.deleteTask(tasksData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
