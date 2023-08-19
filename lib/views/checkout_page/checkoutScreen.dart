import 'package:flutter/material.dart';
import 'package:mpanies_app/views/checkout_page/widgets/checkout_field.dart';
import 'package:mpanies_app/views/checkout_page/widgets/ordersSummary.dart';
import 'package:mpanies_app/views/checkout_page/widgets/payment_field.dart';

import '../../models/responsive.dart';
import '../register_page/register_screen.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        leadingWidth: 200,
        backgroundColor: Colors.white,
        leading: Container(
          height: 150,
          width: 180,
          child: Transform.scale(
            scale: 1.2,
            child: Image.asset('assets/images/mpanies.png',))
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //if (Responsive.isDesktop(context))
            Expanded(
              flex: 2,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      
                      Checkoutfield(),
                      SizedBox(height: 20,),
                      Paymentfield()
                    ],
                  ),
                ),
              ),
            if (Responsive.isDesktop(context))
            SizedBox(width: 50,),
            if (Responsive.isDesktop(context))
            Expanded(
              flex: 1,
              child: OrdersSummary()
            )


          ],
        ),
      ),
    );
  }
}