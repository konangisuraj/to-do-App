import 'package:to_do/entities/category_entity.dart';

abstract class CategoryRepository {
  Future<CategoryEntity> createCategory({required CategoryEntity category});
  Future<CategoryEntity> editCategory({required CategoryEntity category});
  Future<bool> deleteCategory({required CategoryEntity category});
  Future<List<CategoryEntity>> loadCategories();
}