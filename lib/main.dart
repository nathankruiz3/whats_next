import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whats_next/models/task_data.dart';
import 'package:whats_next/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
