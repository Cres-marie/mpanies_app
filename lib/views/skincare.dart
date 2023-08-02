import 'package:flutter/material.dart';
import 'package:mpanies_app/widgets/filters.dart';
import 'package:mpanies_app/widgets/home_components/footer.dart';
import 'package:mpanies_app/widgets/home_components/newsletter.dart';
import 'package:mpanies_app/widgets/sidemenu.dart';

import '../models/responsive.dart';
import '../utils/constants.dart';
import '../widgets/home_components/header_container.dart';
import '../widgets/home_components/menu.dart';

class SkinCare extends StatefulWidget {
  const SkinCare({super.key});

  @override
  State<SkinCare> createState() => _SkinCareState();
}

class _SkinCareState extends State<SkinCare> {
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
                      //WebSideView(),
                      Responsive.isDesktop(context) ? WebSideView() : MobSideView(),
                      NewsLetter(),
                      Footer()
                      //CheckboxExample()
                  
                      //Responsive.isDesktop(context) ? SideMenuView() : MobSideView(),
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