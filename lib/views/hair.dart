import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/home_components/header_container.dart';
import '../widgets/home_components/menu.dart';

class Hair extends StatefulWidget {
  const Hair({super.key});

  @override
  State<Hair> createState() => _HairState();
}

class _HairState extends State<Hair> {
  @override
  Widget build(BuildContext context) {
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
                      
                  
                      //Responsive.isDesktop(context) ? BannerSection() : MobBanner(),
                      //body
                      //BodyContainer(),
                      
                      
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