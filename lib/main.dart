import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mpanies_app/models/trending.dart';
import 'package:mpanies_app/subCategoryProvider.dart';
import 'package:mpanies_app/utils/pageStateManager.dart';
import 'package:mpanies_app/views/bodycare_page/bodyCare.dart';
import 'package:mpanies_app/views/cart_page/productPage.dart';
import 'package:mpanies_app/views/checkout_page/checkoutScreen.dart';
import 'package:mpanies_app/views/hair_page/hair.dart';
import 'package:mpanies_app/views/home_page/home.dart';
import 'package:mpanies_app/views/login_page/login_screen.dart';
import 'package:mpanies_app/views/login_page/widgets/login_field.dart';
import 'package:mpanies_app/views/makeup_page/makeup.dart';
import 'package:mpanies_app/views/nails_page/nails.dart';
import 'package:mpanies_app/views/new_page/new.dart';
import 'package:mpanies_app/views/register_page/register_screen.dart';
import 'package:mpanies_app/views/skincare_page/skincare.dart';
import 'package:mpanies_app/views/trending_page/trending.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await PageStateManager.init();
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
      //home: Home()
      initialRoute: PageStateManager.initialRoute, // Set the initial route
      routes: {
        '/': (context) => Home(), // Home screen
        '/checkout': (context) => Checkout(), // Checkout Page
        '/bodyCare': (context) => BodyCare(), // Add Category Page
        '/new': (context) => New(), // Product List Page
        '/trending': (context) => TrendingProduct(), // Add Product Page
        '/skincare': (context) => SkinCare(), // Orders List Page
        '/hair': (context) => Hair(), // Orders Page
        '/makeup': (context) => MakeUp(), // Customers page
        '/nails': (context) => Nails(), // users List Page
        //'/products': (context) => ProductPage(), // Add User Page
        '/login': (context) => LoginScreen(), // Settings page
        '/register': (context) => RegisterScreen(), // Settings page
      },
    );
  }
}
