import 'package:flutter/material.dart';
import 'package:mpanies_app/models/responsive.dart';
import 'package:mpanies_app/views/cart_page/widgets/expansionList.dart';
import 'package:mpanies_app/views/cart_page/widgets/productOptions.dart';
import 'package:mpanies_app/views/home_page/widgets/footer.dart';
import 'package:mpanies_app/views/home_page/widgets/menu.dart';
import 'package:mpanies_app/views/home_page/widgets/newArrival.dart';
import 'package:mpanies_app/views/home_page/widgets/newsletter.dart';
import 'package:mpanies_app/views/cart_page/widgets/products_container.dart';
import 'package:mpanies_app/views/cart_page/widgets/expansionList.dart';
import 'package:mpanies_app/views/cart_page/widgets/productOptions.dart';
import 'package:mpanies_app/views/cart_page/widgets/products_container.dart';

import '../../utils/constants.dart';
import '../home_page/widgets/header_container.dart';
import '../skincare_page/widgets/sidemenu.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
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
            MobNavMenu()
          ],
        ),
      ),

      body:Container(
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
                      //Responsive.isDesktop(context) ? WebSideView() : MobSideView(),
                      if (!Responsive.isDesktop(context))
                      Column(
                        children: [
                          ProductsContainer(),
                          SizedBox(height: 25,),
                          ProductOptions(),
                          SizedBox(height: 65,),
                          //Spacer()                          
                        ],
                      ),

                      if (Responsive.isDesktop(context))
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ProductsContainer(),
                              SizedBox(width: 10,),
                              ProductOptions(),
                              
                            ],
                          ),
                          
                        ],
                      ),
                      ExpandedItem(),
                      //ProductsContainer(),
                      NewArrival(),
                      NewsLetter(),
                      Footer()
                      
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