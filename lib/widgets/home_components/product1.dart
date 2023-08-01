import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mpanies_app/widgets/home_components/newArrival.dart';

import '../../models/new.dart';
import '../../utils/constants.dart';

class Product1 extends StatefulWidget {

  final NewArrivals product;
  final VoidCallback press;

  const Product1({required this.product,required this.press,});
  

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: InkWell(
        onTap: (){},
        child: Card(
          elevation: 5,
          //borderRadius: BorderRadius.circular(15),
          child: Container(
            //padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                Image.asset(
                    widget.product.imageUrl,
                  ),
                
                // SizedBox(
                //   height: 10,
                // ),
                Text(
                  widget.product.description,
                  maxLines: 2,
                  //minFontSize: 14,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}