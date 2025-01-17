class Category {
  final String name;
  // final String color;
  // final String subcategory;

  Category({required this.name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(name: json['name']
        // color: json['color'],
        // subcategory: json['subcategory']);
        );
  }
}
