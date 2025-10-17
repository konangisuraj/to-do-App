import 'package:todo_app/entities/task_entity.dart';

abstract class TaskRepository {
  Future <TaskEntity> createTask({required TaskEntity task});
  Future <TaskEntity> editTask({required TaskEntity task});
  Future <bool> deleteTask({required TaskEntity task});
  Future <List<TaskEntity>> loadTasks();
 Future <TaskEntity> toggleCompletionStatus({
      required TaskEntity task, 
      required bool isDone
  });
}