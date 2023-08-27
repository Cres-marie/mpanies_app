import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mpanies_app/categoryProvider.dart';
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
import 'package:mpanies_app/views/orders_page/ordersScreen.dart';
import 'package:mpanies_app/views/pageViewer.dart';
import 'package:mpanies_app/views/register_page/register_screen.dart';
import 'package:mpanies_app/views/skincare_page/skincare.dart';
import 'package:mpanies_app/views/skincare_page/widgets/gridview.dart';
import 'package:mpanies_app/views/trending_page/trending.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await PageStateManager.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CategoryProvider>(
          create: (context) => CategoryProvider(),
        ),
        ChangeNotifierProvider<SubcategoryProvider>(
          create: (context) => SubcategoryProvider(),
        ),
      ],

      child: MyApp(),
      
    )
    

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
      
      //initialRoute: PageStateManager.initialRoute, // Set the initial route
      // routes: {
      //   '/': (context) => Home(), // Home screen
      //   '/bodyCare': (context) => BodyCare(), // body care Page
      //   '/new': (context) => New(), // new Page
      //   '/trending': (context) => TrendingProduct(), // Trending Product Page
      //   '/skincare': (context) => SkinCare(), // Skin care Page
      //   '/hair': (context) => Hair(), // hair Page
      //   '/makeup': (context) => MakeUp(), // makeup page
      //   '/nails': (context) => Nails(), // nails Page
      //   '/checkout': (context) => Checkout(), // Checkout Page
      //   '/orders': (context) => OrdersScreen(), // orders Page
      //   '/login': (context) => LoginScreen(), // login page
      //   '/register': (context) => RegisterScreen(), // register page
      //   '/webgridview':(context) => ResponsiveGrid(),
      // },
    );
  }
}
