import 'package:flutter/material.dart';
import 'package:mpanies_app/views/home_page/widgets/footer.dart';
import 'package:mpanies_app/views/orders_page/widgets/orderslist.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../home_page/widgets/header_container.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ResponsiveBuilder(
          builder: (context, sizingInformation) {
          // Check the sizing information here and return your UI
            if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
              return Container(
                child: Column(
                  children: [
                    HeaderContainer(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            OrdersList(),
                            Footer()
                          ],
                        ),
                      ),
                    ),
                    
                    
                  ],
                ),
              );
            }
          
            if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
              return Container(
                child: Column(
                  children: [
                    HeaderContainer(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            OrdersList(),
                            Footer()
                          ],
                        ),
                      ),
                    ),
                    
                    
                  ],
                ),
              );
            }
          
            if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
              return Container(color:Colors.yellow);
            }
          
            return Container(color:Colors.purple);
          },
        
        ),
      
    );
  }
}
