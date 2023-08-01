import 'package:flutter/material.dart';
import 'package:mpanies_app/utils/constants.dart';
import 'package:mpanies_app/widgets/home_components/footer.dart';
//import 'package:mpanies_app/widgets/newarrivals.dart';
import 'package:mpanies_app/widgets/home_components/newsletter.dart';
import 'package:mpanies_app/widgets/home_components/trending_products.dart';
//import 'package:mpanies_app/widgets/slider.dart';

import '../models/new.dart';
import '../models/responsive.dart';
import '../widgets/home_components/banner_section.dart';
import '../widgets/home_components/body_container.dart';
import '../widgets/home_components/header_container.dart';
import '../widgets/home_components/menu.dart';
import '../widgets/home_components/newArrival.dart';

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
            MobMenu()
          ],
        ),
      ),

      body: Container(
        child: Column(
          children: [
            //header
            HeaderContainer(),
            Expanded(
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      
                  
                      Responsive.isDesktop(context) ? BannerSection() : MobBanner(),
                      //body
                      BodyContainer(),
                      NewArrival(),
                      TrendingProducts(),
                      NewsLetter(),
                      Footer()
                      
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