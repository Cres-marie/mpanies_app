import 'package:flutter/material.dart';
import 'package:mpanies_app/views/product_page/widgets/productOptions.dart';

import 'imageSlider.dart';

class ProductsContainer extends StatefulWidget {
  const ProductsContainer({super.key});

  @override
  State<ProductsContainer> createState() => _ProductsContainerState();
}

class _ProductsContainerState extends State<ProductsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [

          Container(
            padding: EdgeInsets.only(left: 30),
            child: Expanded(
              flex: 2,
              child: ImageSlider(
                images: [
                  'assets/images/shop-new-14.png',
                  'assets/images/shop-new-21.png',
                  'assets/images/shop-new-4.png',
                  
                ],
              )
            ),
          ),
          SizedBox(width: 200,),
          Container(
            //margin: EdgeInsets.only(right:60),
            padding: EdgeInsets.only(right: 40),
            child: Expanded(
              child: ProductOptions()
            ),
          )

        ],
      ),
    );
  }
}