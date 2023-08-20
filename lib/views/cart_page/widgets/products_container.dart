import 'package:flutter/material.dart';
import 'package:mpanies_app/views/cart_page/widgets/productOptions.dart';

import '../../../models/products.dart';
import 'imageSlider.dart';

class ProductsContainer extends StatefulWidget {
  final ProductItem product;
  const ProductsContainer({super.key, required this.product});

  @override
  State<ProductsContainer> createState() => _ProductsContainerState();
}

class _ProductsContainerState extends State<ProductsContainer> {
  @override
  Widget build(BuildContext context) {
    return 
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Expanded(
              flex: 2,
              child: ImageSlider(
                images: widget.product.slideImages,
              )
            ),
          );
          // SizedBox(width: 200,),

          // Container(
          //   //margin: EdgeInsets.only(right:60),
          //   padding: EdgeInsets.only(right: 40),
          //   child: Expanded(
          //     child: ProductOptions()
          //   ),
          // )
  }
}