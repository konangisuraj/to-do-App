import 'package:to_do/entities/task_entity.dart';

final class TaskModel extends TaskEntity {
  TaskModel({
    required super.title,
    required super.deadline,
    super.isDone =false,
    super.priority = TaskPriority.low,
    required super.category,
  });
}