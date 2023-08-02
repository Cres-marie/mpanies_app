import 'package:flutter/material.dart';
import '../../models/new.dart';
import '../../utils/constants.dart';

class NewArrival extends StatefulWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  State<NewArrival> createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(right: 20, top: 50, left: 20, bottom: 70),
      //padding: EdgeInsets.all(70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('New Arrivals', style: bheadings,),
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
  final NewArrivals product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
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
