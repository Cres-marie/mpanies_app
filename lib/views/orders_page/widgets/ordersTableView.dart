import 'package:flutter/material.dart';
import 'package:mpanies_app/views/orders_page/widgets/ordersContainer.dart';
import 'package:mpanies_app/views/orders_page/widgets/ordersHeader.dart';
import 'package:mpanies_app/views/orders_page/widgets/orderslist.dart';

import '../../../models/responsive.dart';

class OrdersTableView extends StatefulWidget {
  const OrdersTableView({super.key});

  @override
  State<OrdersTableView> createState() => _OrdersTableViewState();
}

class _OrdersTableViewState extends State<OrdersTableView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
               //if (Responsive.isDesktop(context))
              scrollDirection: Axis.horizontal,
              child: OrdersHeader()
            ),
            SizedBox(height: 20,),
            Responsive.isMobile(context) // Check if the screen is mobile
                        ? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: OrdersListTable(),
                        )
                        : OrdersListTable(),

            SizedBox(height: 20,),
            OrdersContainer()
          ],
        ),
      );
  }
}