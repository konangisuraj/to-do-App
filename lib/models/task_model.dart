import 'package:todo_app/entities/task_entity.dart';
import 'package:todo_app/entities/category_entity.dart';

final class TaskModel extends TaskEntity {
  TaskModel({
    required super.title,
    required super.deadline,
    super.isDone =false,
    super.priority = TaskPriority.low,
    required super.category,
    this.isDeleted = false,
    required String id,
  });
  final bool isDeleted;

  TaskModel copyWith({
    String? title,
    DateTime? deadline,
    bool? isDone,
    TaskPriority? priority,
    CategoryEntity? category,
    bool? isDeleted,
  }) {
    return TaskModel(
      title: title ?? this.title,
      deadline: deadline ?? this.deadline,
      isDone: isDone ?? this.isDone,
      priority: priority ?? this.priority,
      category: category ?? this.category,
      isDeleted: isDeleted ?? this.isDeleted,
      id: '',
    );
  }
}