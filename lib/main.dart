import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo_app/models/category_model.dart';
import 'package:todo_app/models/task_model.dart';
import 'package:todo_app/widgets/category_tag.dart';
import 'package:todo_app/widgets/task_list_item.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TaskListItem(taskName: createRandomTask()),
              TaskListItem(taskName: createRandomTask()),
              TaskListItem(taskName: createRandomTask()),
              TaskListItem(taskName: createRandomTask()),
              CategoryTag(category: createRandomCategory()),
              CategoryTag(category: createRandomCategory()),
              CategoryTag(category: createRandomCategory()),
              // FilledButton(
              //   onPressed: () async {
              //     print('button pressed');
              //     // Create a random category
              //     final randomCategory = createRandomCategory();
              //     print(
              //       'Created category: \n${randomCategory.name} with color ${randomCategory.color}',
              //     );

              //     final categoryRepo = CategoryRepoImpl();
              //     await categoryRepo.createCategory(category: randomCategory);
              //     print('Category saved to repository.');
              //   },
              //   child: const Text('Add a random category'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}


TaskModel createRandomTask() {
  late final TaskModel result;
  result = TaskModel(
    title: Uuid().v4(),
    deadline: DateTime.now(),
    isDone: Random().nextBool(),
    category: createRandomCategory(),
    id: Uuid().v4(),
  );
  return result;
}

CategoryModel createRandomCategory() {
  late final CategoryModel result;
  final String randomName = Uuid().v4();
  final String randomId = Uuid().v4();
  final Color randomColor = Color.fromARGB(
    255,
    Random().nextInt(255),
    Random().nextInt(255),
    Random().nextInt(255),
  );
  result = CategoryModel(
    name: randomName,
    color: randomColor,
    id: randomId,
  );
  return result;
}