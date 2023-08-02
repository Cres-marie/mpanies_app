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
      padding: EdgeInsets.only(right: 20, bottom: 70, left: 20),
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
            children: [
              Stack(
                children: [
                  // Product image
                  Image.asset(
                    product.imageUrl,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child:GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.favorite, color: Colors.red, size: 20,),
                    ),
                      
                  ),
                  
                ]
              ),                      
              Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                SizedBox(height: 8),
                Container(
                  height: 40,
                  width: 140,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Set background color to black
                //color: Colors.white, // Set text color to white
                      elevation: 4, // Set the elevation shadow
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Set border radius
                    ),
                
                    child: Text('Add To Bag',style: TextStyle(fontSize: 16),),
                  ),
                )
              ],
            ),
            ]
          ),
        ),
      ),
    );
  }
}

  
