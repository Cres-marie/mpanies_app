import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mpanies_app/models/products.dart';
import 'package:mpanies_app/views/cart_page/widgets/productcolors.dart';
import 'package:mpanies_app/views/cart_page/widgets/quantityCounter.dart';
import 'package:mpanies_app/views/cart_page/widgets/quantityCounter.dart';
import 'package:mpanies_app/views/home_page/widgets/elevatedButton.dart';
import 'package:mpanies_app/views/orders_page/ordersScreen.dart';
import 'package:mpanies_app/views/skincare_page/widgets/rating.dart';

import '../../../utils/constants.dart';
import '../../../widgets/hoverWidget.dart';

class ProductOptions extends StatefulWidget {

  final ProductItem product;
  const ProductOptions({super.key, required this.product});

  @override
  State<ProductOptions> createState() => _ProductOptionsState();
}

class _ProductOptionsState extends State<ProductOptions> {
  int _selectedColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            width: 65,
            height: 23,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(11)
            ),
            child: Text(
              'IN STOCK', style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(height: 10,),
          Text(widget.product.title. toUpperCase(),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 5,),
          Text(widget.product.category, style: TextStyle(fontSize: 16),),
          Row(
            children: [
              Text(
                "\$7.50",
                style: TextStyle(fontSize: 18,),
              ),
              SizedBox(width: 15,),
              Text(
                "\$17.50",
              style: TextStyle(fontSize: 18,color: Colors.red, decoration: TextDecoration.lineThrough),
              ),

              SizedBox(width: 25,),

              RatingStar()
            ],
          ),
          ProductColors(
            productColors: [
              ProductColorModel("White", Colors.white),
              ProductColorModel("Black", Colors.black),
              ProductColorModel("Green", Colors.green)
            ],
            onChange: (index) {
              setState(() {
                _selectedColorIndex = index;
              });
            },
            selectedIndex: _selectedColorIndex
        ),
          SizedBox(height: 15,),
          AutoSizeText('Enriched with a nourishing blend of botanical extracts and potent antioxidants, our mask offers a spa-like indulgence in the comfort of your own home.',
          maxLines: 4, style: TextStyle(height: 1.5),
          ),
          SizedBox(height: 10,),
          QuantityCounter(
            onChanged: (quantity) {
            print('Quantity changed: $quantity');
            },
          initialValue: 1,
        ),
          SizedBox(height: 20,),
          
            Container(
              height: 40,
              width: 140,
              child: ElevatedHoverButton(
                text: 'Add To Bag',
                
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrdersScreen()),
                  );
                },
                          //icon: Icons.shopping_bag,

              ),
            )

          
        ],
      ),
    );
  }
}