import 'package:flutter/material.dart';
import 'package:mpanies_app/widgets/hoverWidget.dart';

class ShoppingBag extends StatefulWidget {
  const ShoppingBag({super.key});

  @override
  State<ShoppingBag> createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HoverIcon(
          onPressed: (){},
          iconData : Icons.shopping_bag_outlined,
          size: 40.0,
        ),
        Positioned(
          top: 0, right: 0, // Adjust the position as needed
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 73, 70, 69),
              shape: BoxShape.circle,
            ),
            child: Text('0',style: TextStyle(color: Colors.white),),
          ),
        ),
      ],
    ); 
  }
}