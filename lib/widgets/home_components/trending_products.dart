import 'package:flutter/material.dart';
import 'package:mpanies_app/models/trending.dart';

import '../../utils/constants.dart';

class TrendingProducts extends StatefulWidget {
  const TrendingProducts({super.key});

  @override
  State<TrendingProducts> createState() => _TrendingProductsState();
}

class _TrendingProductsState extends State<TrendingProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin:EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(right: 70, bottom: 70, left: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Trending', style: bheadings,),
          Container(
            height: 300,
            margin:EdgeInsets.only(top: 10),
            //padding: EdgeInsets.all(40),
            width: MediaQuery.of(context).size.width,
             // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ProductCard(product: products[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Trending product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Card(
        // Add any desired styling to the card
        elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: Container(
          width: 300,// Adjust the width as needed
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Product image
              Image.asset(
                product.imageUrl,
                  height: 150,
                  width: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 8),
              // Product description
              Text(
                product.description,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              // Product price
              Text(
                product.price,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  
