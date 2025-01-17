import 'package:flutter/material.dart';
import 'package:template_project/Model/Category.dart';
import 'package:template_project/Service/category_service.dart';

class Categoryprovider with ChangeNotifier {
  List<Category> _category = [];
  List<Category> get category => _category;

  Future<void> loadCategories() async {
    _category = await CategoryService.loadCategory();
    notifyListeners();
  }
}
