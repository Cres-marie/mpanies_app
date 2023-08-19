import 'package:flutter/material.dart';

import '../../../models/orders.dart';
import '../../../utils/constants.dart';

class OrdersSummary extends StatefulWidget {
  const OrdersSummary({super.key});

  @override
  State<OrdersSummary> createState() => _OrdersSummaryState();
}

class _OrdersSummaryState extends State<OrdersSummary> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Card(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(30), 
          child: Column(
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order Summary', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('4 Items')
                ],
              ),
              SizedBox(height: 10,),
              Row(           
                children: [
                  Text('Order Number:',),
                  SizedBox(width: 14,),
                  Text('0012345')
                ],
              ),
              
              SizedBox(height: 10,),
              
              
                Container(
                  height: 300,
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: myOrders.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Orders order = myOrders[index];
                        return Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [                            
                                      Container(
                                        //color: kPrimaryColor,
                                        width: 200,// Adjust the width as needed
                                        //height:40,
                                        padding: EdgeInsets.all(20),
                                        //margin: EdgeInsets.all(),
                                        child: Container(
                                          color: Colors.grey,
                                          child: Image.asset(order.imageUrl, width: 200, height: 120,)
                                        )
                                      ),                            
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(order.description),
                                            Text(order.price),                                 
                                            
                                          ]
                                        ),
                                      )                    
                                    ],
                                  ),
                                  
                                ),
                              ]
                            )
                          ]
                        );
                      }
                    ),
                  ),
                ),
              
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('\$2000')
                ],
              ),
              
            ],
              
              
          ),
        ),
      ),
    );
  }
}