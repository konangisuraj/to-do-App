import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:to_do/entities/category_entity.dart';
import 'package:to_do/repository/category_repository.dart';
final class CategoryRepoImpl extends CategoryRepository {
  @override
  Future<CategoryEntity> createCategory({
    required CategoryEntity category,
    }) async {
      final input = category;

      final Directory appDocDir = await getApplicationDocumentsDirectory();
      final categoryFile = File('${appDocDir.path}/categories');
      if (!(await categoryFile.exists())) {
        await categoryFile.create();
      }

      await categoryFile.writeAsString(
        input.toMap().toString(),
        mode: FileMode.append,
      );
      return input;
  }

  @override
   Future<CategoryEntity> editCategory({required CategoryEntity category}) {
    // TODO: implement editCategory
    throw UnimplementedError();
  }
  @override
   Future<bool> deleteCategory({required CategoryEntity category}) {
    // TODO: implement deleteCategory
    throw UnimplementedError();
  }

  @override
   Future<List<CategoryEntity>> loadCategories() {
    // TODO: implement loadCategories
    throw UnimplementedError();
  }
}