import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoList/models/tasks_data.dart';
import 'package:todoList/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        title: "Todo",
        home: TasksScreen(),
      ),
    );
  }
}
