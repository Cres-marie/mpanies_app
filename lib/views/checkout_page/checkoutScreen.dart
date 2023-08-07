import 'package:flutter/material.dart';
import 'package:mpanies_app/views/checkout_page/widgets/checkout_field.dart';
import 'package:mpanies_app/views/checkout_page/widgets/ordersSummary.dart';
import 'package:mpanies_app/views/checkout_page/widgets/payment_field.dart';

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
        constraints: const BoxConstraints(maxWidth: 1600,),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.only(bottom: 30, top: 30),
                      constraints: const BoxConstraints(maxWidth: 500,),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Image.asset('assets/images/signin_balls.png', width: 260, ),
                          //Image.asset('assets/images/mpanies.png', width: 150, ),              
                          Container(
                            padding: EdgeInsets.only(left:40),
                            child: ListTile(
                              title: Text('1. Enter Shipping Address', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 18, )),
                            ),
                          ),               
                          SizedBox(height: 30),
                          
                          Checkoutfield(),
                          SizedBox(height: 20),                
                                      
                        ],
                      ),
                    ),
      
                SizedBox(height: 20,),
      
                Container(
                  padding: EdgeInsets.only(bottom: 30),
                  constraints: const BoxConstraints(maxWidth: 500,),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Image.asset('assets/images/signin_balls.png', width: 260, ),
                      //Image.asset('assets/images/mpanies.png', width: 150, ),              
                      Container(
                        padding: EdgeInsets.only(left:40),
                        child: ListTile(
                          title: Text('2. Enter Payment Details', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 18, )),
                        ),
                      ),               
                      SizedBox(height: 10),
                      
                      Paymentfield(),
                      SizedBox(height: 20),                
                                  
                    ],
                  ),
                ),
                
                  ],
                ),
      
                
              ),
            ),
            OrdersSummary()
          ],
        ),
      ),
    );
  }
}