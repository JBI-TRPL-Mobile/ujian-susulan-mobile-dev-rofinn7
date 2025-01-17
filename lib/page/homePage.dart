import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/Provider/CategoryProvider.dart';
import 'package:template_project/Widget/BottomNavigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<Categoryprovider>(context);

    categoryProvider.loadCategories();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop Seeds'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.person, size: 60),
                // Icon(Icons.leaf, size: 60),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: categoryProvider.category.length,
              itemBuilder: (context, index) {
                final category = categoryProvider.category[index];
                return GestureDetector(
                  onTap: () {
                    // categoryProvider.toggleSelection(index);
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        category.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildCategoryButton(String label, {bool isSelected = false}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.yellow : Colors.grey[200],
        foregroundColor: isSelected ? Colors.black : Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(label),
    );
  }
}
