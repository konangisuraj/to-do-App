import 'dart:ui';

abstract class CategoryEntity {
  final String name;
  final Color color;

  CategoryEntity({required this.name, required this.color});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'color': {'r': color.r, 'g': color.g, 'b': color.b, 'a': color.a},
    };
  }
}