import 'package:flutter/material.dart';
import 'package:mpanies_app/models/products.dart';
import 'package:mpanies_app/views/home_page/widgets/elevatedButton.dart';
import 'package:mpanies_app/views/orders_page/ordersScreen.dart';
import 'package:provider/provider.dart';
import '../../../models/new.dart';
import '../../../subCategoryProvider.dart';
import '../../../utils/constants.dart';
import '../../../widgets/hoverWidget.dart';
import '../../cart_page/productPage.dart';

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
            height: 320, //height of the cards
            margin:EdgeInsets.only(top: 10),
            //padding: EdgeInsets.all(40),
            width: MediaQuery.of(context).size.width,
             // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ProductCard(product: productItems[index],),
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
  final ProductItem product;


  const ProductCard({required this.product,});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {

  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {

  
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ProductPage(product: widget.product)),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Product image
                    Stack(
                      children: [
                        // Product image
                        Container(
                          width: 230,
                          child: Image.asset(
                            widget.product.images,
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                            child: InkWell(
                              onTap: () {
                                
                              },
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: buttonColor,
                                  ),
                                  child: Text('New',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                )
                            ),
                          ),
                        
                        
                      ]
                    ),
                    
                    SizedBox(height: 8),
                    // Product description
                    Text(
                      widget.product.title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    // Product price
                    Text(
                      '\$${widget.product.price.toString()}',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color:Colors.blue),
                    ),
                    SizedBox(height: 4),
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
