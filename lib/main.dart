import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/Provider/CategoryProvider.dart';
import 'package:template_project/page/homePage.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => Categoryprovider())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => HomePage()},
    );
  }
}
