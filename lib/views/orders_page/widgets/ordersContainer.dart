import 'package:flutter/material.dart';

import '../../../models/responsive.dart';
import '../../../utils/constants.dart';
import '../../../widgets/hoverWidget.dart';
import '../../checkout_page/checkoutScreen.dart';

class OrdersContainer extends StatefulWidget {
  const OrdersContainer({super.key});

  @override
  State<OrdersContainer> createState() => _OrdersContainerState();
}

class _OrdersContainerState extends State<OrdersContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right:100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Column(
                  children: [
                    if (Responsive.isDesktop(context))
                    TextButton(
                        onPressed: () {
                          // Handle "Continue Shopping" button press
                          Navigator.pop(context);
                        },
                        child: Text('Continue Shopping'),
                    ),
                  ],
                ),
              if (Responsive.isDesktop(context))
              SizedBox(width: 500),
    
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,              
                      children: [
                        Text('Sub Total:', style: TextStyle(fontSize: 18,),),
                        Text('\$750', style: TextStyle(fontSize: 18, color: Colors.blue),),                
                      ],
                    ),
                    SizedBox(height: 14,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Shipping Cost:', style: TextStyle(fontSize: 18,),),
                        Text('\$750', style: TextStyle(fontSize: 18,  color: Colors.blue),),
                      ],
                    ),
                    SizedBox(height: 14,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total:', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        Text('\$750', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                      ],
                    ),
                    SizedBox(height: 14,),
                    Container(
                      height: 40,
                      //width: MediaQuery.of(context).size.width,
                      child: ElevatedHoverButton(
                        text: 'CheckOut',
                        defaultColor: Colors.black,
                        hoverColor: k2SecondaryGold,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Checkout()),
                          ); // Navigate back to the previous page
                        },
                        icon: Icons.lock,
                      ),
                    ),           
                  ],
                ),
              ),
            ],
          ),

          
        ],
      ),
    );
  }
}