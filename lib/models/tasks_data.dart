import 'package:flutter/foundation.dart';
import 'package:todoList/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Flutter"),
    Task(name: "node js"),
    Task(name: "rest"),
  ];

  void addTask(String newTask) {
    final task = Task(name: newTask);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task t) {
    t.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task t) {
    tasks.remove(t);
    notifyListeners();
  }
}
