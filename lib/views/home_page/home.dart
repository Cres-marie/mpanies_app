import 'package:flutter/material.dart';
import 'package:mpanies_app/utils/constants.dart';
import 'package:mpanies_app/views/home_page/widgets/footer.dart';
//import 'package:mpanies_app/widgets/newarrivals.dart';
import 'package:mpanies_app/views/home_page/widgets/newsletter.dart';
import 'package:mpanies_app/views/home_page/widgets/searchbar.dart';
import 'package:mpanies_app/views/home_page/widgets/trending_products.dart';
import 'package:mpanies_app/views/product_page/widgets/products_container.dart';
//import 'package:mpanies_app/widgets/slider.dart';

import '../../models/new.dart';
import '../../models/responsive.dart';
import 'widgets/banner_section.dart';
import 'widgets/body_container.dart';
import 'widgets/header_container.dart';
import 'widgets/menu.dart';
import 'widgets/newArrival.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //final Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "",
                  style: bheadings,
                ),
              ),
            ),
            MobNavMenu()
          ],
        ),
      ),

      body: Container(
        child: Column(
          children: [
            //header
            HeaderContainer(),
            
            
            //DrawerWidget(),
            //RoundSearchIcon(),
            Expanded(
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      
                  
                      Responsive.isDesktop(context) ? webBanner() : MobBanner(),
                      //body
                      BodyContainer(),
                      NewArrival(),
                      TrendingProducts(),
                      NewsLetter(),
                      Footer(),
                      
                      
                      //footer
                      //SizedBox(
                        //height: 30,
                      //),
                      //Footer(),
                      //now we make our website responsive
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
              

    );
  }
}