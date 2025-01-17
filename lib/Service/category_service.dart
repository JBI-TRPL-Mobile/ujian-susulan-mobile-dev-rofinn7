import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:template_project/Model/Category.dart';

class CategoryService {
  static Future<List<Category>> loadCategory() async {
    try {
      String jsonString = await rootBundle.loadString('Data/category.json');
      List<dynamic> jsonData = jsonDecode(jsonString);
      return jsonData.map((data) => Category.fromJson(data)).toList();
    } catch (e) {
      print('Gagal membaca pesan: $e');
      return [];
    }
  }
}
