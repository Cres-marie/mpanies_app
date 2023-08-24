import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mpanies_app/subCategoryProvider.dart';
import 'package:mpanies_app/utils/pageStateManager.dart';
import 'package:mpanies_app/views/cart_page/productPage.dart';
import 'package:mpanies_app/views/checkout_page/checkoutScreen.dart';
import 'package:mpanies_app/views/home_page/home.dart';
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
        '/checkout/': (context) => Checkout() // Category List Page
        //'/categories/add': (context) => AddCategory(), // Add Category Page
        //'/products/list': (context) => ProductListPage(), // Product List Page
        //'/products/add': (context) => AddProduct(), // Add Product Page
        //'/orders/list': (context) => OrdersListPage(), // Orders List Page
        //'/orders/details': (context) => ViewOrderDetails(), // Orders Page
        //'/customers/list': (context) => CustomersPageList(), // Customers page
        //'/users/list': (context) => UsersListPage(), // users List Page
        //'/users/add': (context) => AddUser(), // Add User Page
        //'/settings': (context) => SettingsPage(), // Settings page
        //'/logout': (context) => LoginField(), // Settings page
      },
    );
  }
}
