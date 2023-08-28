import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mpanies_app/views/home_page/widgets/footer.dart';
import 'package:mpanies_app/views/home_page/widgets/newArrival.dart';
import 'package:mpanies_app/views/orders_page/widgets/ordersTableView.dart';
import 'package:mpanies_app/views/orders_page/widgets/orderslist.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../models/responsive.dart';
import '../../utils/constants.dart';
import '../home_page/widgets/header_container.dart';
import '../home_page/widgets/menu.dart';
import '../home_page/widgets/newsletter.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              child: Center(
                child: SvgPicture.asset('assets/images/mpanies1.svg', height: 80, width: 140,colorFilter: ColorFilter.mode(buttonColor, BlendMode.srcIn),),
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
            Expanded(
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    children: [

                      OrdersTableView(),
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
