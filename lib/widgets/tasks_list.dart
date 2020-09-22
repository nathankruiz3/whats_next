import 'package:flutter/material.dart';
import 'package:whats_next/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:whats_next/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: data.tasks[index].name,
              isChecked: data.tasks[index].isDone,
              checkboxCallback: (checkboxState) {
                data.updateTask(data.tasks[index]);
              },
              deleteTask: () {
                data.deleteTask(index);
              },
            );
          },
          itemCount: data.taskCount,
        );
      },
    );
  }
}
