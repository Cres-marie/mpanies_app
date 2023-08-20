import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mpanies_app/subCategoryProvider.dart';
import 'package:mpanies_app/views/home_page/home.dart';
import 'package:provider/provider.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(
    ChangeNotifierProvider(
      create: (context) => SubcategoryProvider(),
      child: MyApp(),
    ),

  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}
