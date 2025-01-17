import 'package:flutter/material.dart';

class DetailCategory extends StatelessWidget {
  const DetailCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.search, color: Colors.black),
          actions: [
            Icon(Icons.person, color: Colors.black),
            SizedBox(width: 10),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'SHOP FLOWERS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: Text('COLOR'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: Text('TYPE'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(title: Text('data'), tileColor: Colors.pink),
                  ListTile(title: Text('data'), tileColor: Colors.red),
                  ListTile(title: Text('data'), tileColor: Colors.purpleAccent),
                  ListTile(title: Text('data'), tileColor: Colors.purple),
                  ListTile(title: Text('data'), tileColor: Colors.blue),
                ],
              ),
            ),
          ],
        ));
  }
}
