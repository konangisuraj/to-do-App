import 'package:flutter/material.dart';
import 'package:todo_app/models/task_model.dart';
class TaskListItem extends StatefulWidget {
  const TaskListItem({super.key, required this.taskName});
  final TaskModel taskName;

  @override
  State<TaskListItem> createState() => _TaskListItemState();
}

class _TaskListItemState extends State<TaskListItem> {
  late TaskModel currentTask;
  @override
  void initState() {
    super.initState();
    currentTask = widget.taskName;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(currentTask.title),
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 4,
        children: [
          ColoredBox(
            color: currentTask.category.color,
            child: SizedBox(width: 4, height: 24),
          ),

          IconButton(
            onPressed: () {
              setState(() {
                currentTask = currentTask.copyWith(isDone: !currentTask.isDone);
              });
            },
            icon: currentTask.isDone
                ? Icon(Icons.check_circle, color: Colors.green)
                : Icon(Icons.circle_outlined, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}