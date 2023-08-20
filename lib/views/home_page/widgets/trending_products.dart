import 'package:flutter/material.dart';
import 'package:mpanies_app/models/trending.dart';
import 'package:mpanies_app/views/home_page/widgets/elevatedButton.dart';
import 'package:mpanies_app/views/cart_page/productPage.dart';
import 'package:mpanies_app/views/orders_page/ordersScreen.dart';
import 'package:provider/provider.dart';

import '../../../subCategoryProvider.dart';
import '../../../utils/constants.dart';
import '../../../widgets/hoverWidget.dart';

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
            height: 320, //height of the cards
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
                  child: ProductCard(product: products[index], index: index,),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatefulWidget {
  final Trending product;
  final int index; 

  const ProductCard({required this.product, required this.index});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {

    final filteredProducts =
        Provider.of<SubcategoryProvider>(context).filteredProducts;

    return Container(
      child: InkWell(
        onTap: (){
          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ProductPage(product: filteredProducts[widget.index])),
                                          );
        },
        child: MouseRegion(
          onEnter: (_) {
            setState(() {
              _isHovered = true; // Set hover state to true
            });
          },
          onExit: (_) {
            setState(() {
              _isHovered = false; // Set hover state to false
        });
  },
          child: Transform.scale(
            scale: _isHovered ? 1.02 : 1.0,
            child: Card(
              // Add any desired styling to the card
              elevation: 2.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
              child: Container(
                color: kPrimaryColor,
                width: 250,// Adjust the width as needed
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    
                        // Product image
                        Image.asset(
                          widget.product.imageUrl,
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      
                    
                    SizedBox(height: 8,),                   
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Product description
                      Text(
                        widget.product.description,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4,),
                      // Product price
                      Text(
                        widget.product.price,
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color:Colors.blue),
                      ),
                      SizedBox(height: 4),
                      Container(
                        height: 40,
                        width: 140,
                        child: ElevatedHoverButton(
                          text: 'Add To Bag',
                          defaultColor: Colors.black,
                          hoverColor: k2SecondaryGold,
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
                  ]
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

  
