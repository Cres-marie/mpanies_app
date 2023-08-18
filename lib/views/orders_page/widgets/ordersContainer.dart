import 'package:flutter/material.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  // Handle "Continue Shopping" button press
                  Navigator.pop(context);
                },
                child: Text('Continue Shopping'),
              ),
            ),
            SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,              
                  children: [
                    Text('Sub Total:', style: ordersubheadings,),
                    Text('\$750', style: ordersubheadings,),                
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping Cost:', style: ordersubheadings,),
                    Text('\$750', style: ordersubheadings,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total:', style: ordersubheadings,),
                    Text('\$750', style: ordersubheadings,),
                  ],
                ),

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
          ],
        ),
      ],
    );
  }
}