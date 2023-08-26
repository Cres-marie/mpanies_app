import 'package:flutter/material.dart';
import 'package:mpanies_app/utils/constants.dart';
import 'package:mpanies_app/views/home_page/widgets/footer.dart';
//import 'package:mpanies_app/widgets/newarrivals.dart';
import 'package:mpanies_app/views/home_page/widgets/newsletter.dart';
import 'package:mpanies_app/views/home_page/widgets/searchbar.dart';
import 'package:mpanies_app/views/home_page/widgets/trending_products.dart';
import 'package:mpanies_app/views/cart_page/widgets/products_container.dart';
import 'package:mpanies_app/views/pageViewer.dart';
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
    return Container(
        child: Column(
          children: [
            //heade
                      
                  
                      Responsive.isDesktop(context) ? webBanner() : MobBanner(),
                      //body
                      BodyContainer(),
                      NewArrival(),
                      TrendingProducts(),
                      NewsLetter(),
                      Footer(),
                      
                      
                      
                    ],
                  ),
                
      
              

    );
  }
}