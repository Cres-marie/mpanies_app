import 'package:flutter/material.dart';
import 'package:mpanies_app/utils/constants.dart';
import 'package:mpanies_app/widgets/hoverWidget.dart';

import '../../../models/trending.dart';
import '../../orders_page/ordersScreen.dart';

class ShoppingBag extends StatefulWidget {
  const ShoppingBag({super.key});

  @override
  State<ShoppingBag> createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {

  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
            setState(() {
              isClicked = !isClicked;
            });

            Future.delayed(Duration(milliseconds: 70), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrdersScreen()), // Replace with your OrdersScreen
          );
        });
      },
      child: Stack(
        children: [
          Icon(Icons.shopping_bag_outlined, size: 30, color: isClicked ? k2SecondaryGold : buttonColor, ),          
          
          Positioned(
            top: 0, right: 0, // Adjust the position as needed
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: buttonColor,
                shape: BoxShape.circle,
              ),
              child: Text('0',style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    ); 
  }


  // void _showMenu() {
  // final List<PopupMenuItem<Trending>> trendingItems = products.map((product) {
  //   return PopupMenuItem<Trending>(
  //     value: product,
  //     child: Container(
  //       //width: 800,
  //       child: Column(
  //         children: [
  //           Row(
  //               children: [
  //                 Image.asset(product.imageUrl, fit: BoxFit.cover, width: 50,),
  //                 Column(
  //                   children: [
  //                     Text(product.description),
  //                     Text(product.price),
  //                   ],
  //                 )
  //               ],
  //             ),
            
  //         ],
  //       ),
        
  //     ),
  //   );
  // }).toList();

  // // Get the position of the shopping bag icon
  // final RenderBox button = context.findRenderObject() as RenderBox;
  
  // // Show the popup menu
  // showMenu<Trending>(
  //     context: context,
  //     position: RelativeRect.fromLTRB(
  //       button.localToGlobal(Offset.zero).dx,
  //       button.localToGlobal(Offset.zero).dy + button.size.height,
  //       button.localToGlobal(Offset.zero).dx ,
  //       button.localToGlobal(Offset.zero).dy +
  //           button.size.height +
  //           trendingItems.length * kMinInteractiveDimension,
  //     ),
  //     items: [

  //       PopupMenuItem<Trending>(
  //       child: Container(
  //         //width: 800,
  //         height:300,
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Container(
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Text(
  //                     'Items in Basket', // Heading
  //                     style: TextStyle(fontWeight: FontWeight.bold),
  //                   ),
  //                   Text('totalPrice', style: TextStyle(fontWeight: FontWeight.bold),)
  //                 ],
  //               ),
  //             ),
  //             SizedBox(height: 50,),
  //             Divider(),
  //              // Divider between header and items
  //             SingleChildScrollView(
  //               child: Column(
  //                 children: trendingItems,
  //               ),
  //             )
  //            // Add individual items
  //           ],
  //         ),
  //       ),
  //     ),


  //     ]

      
  //     //trendingItems,
  //     // Adjust the width of the popup menu
  //     //width: 300, // Change this value as needed
  //   );

  }
