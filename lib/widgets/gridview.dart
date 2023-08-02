import 'package:flutter/material.dart';

import '../models/products.dart';
import '../utils/constants.dart';

class WebGridView extends StatefulWidget {
  const WebGridView({super.key});

  @override
  State<WebGridView> createState() => _WebGridViewState();
}

class _WebGridViewState extends State<WebGridView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 40, top: 50, left: 10) ,
                padding: EdgeInsets.all(10.0),
                width: double.infinity,
                height: 40,
                color:kTertiaryColor ,
                child: Text('Skin Care Products', style: sideheadings),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(right: 30, top: 50),
                //height: 300,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns in the grid
                    crossAxisSpacing: 20, // Spacing between columns
                    mainAxisSpacing: 14, // Spacing between rows
                    mainAxisExtent: 300 // increase card height
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Container(
                      
                      child: Card(
                        elevation: 6,
                        child: Container(
                          
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                products[index].images[0], height: 200, width: 200, fit:BoxFit.cover,
                              ),
                              SizedBox(height: 8),
                              Text(products[index].title, style: TextStyle(fontWeight: FontWeight.bold)),
                              Text(products[index].price.toString()),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
  }
}

class MobGridView extends StatefulWidget {
  const MobGridView({super.key});

  @override
  State<MobGridView> createState() => _MobGridViewState();
}

class _MobGridViewState extends State<MobGridView> {
  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only( top: 30, left: 10) ,
                padding: EdgeInsets.all(10.0),
                width: double.infinity,
                height: 40,
                color:kTertiaryColor ,
                child: Text('Skin Care Products', style: sideheadings),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only( top: 20),
                //height: 300,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns in the grid
                    crossAxisSpacing: 10, // Spacing between columns
                    mainAxisSpacing: 14, // Spacing between rows
                    mainAxisExtent: 300 // increase card height
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Container(
                      
                      child: Card(
                        elevation: 6,
                        child: Container(
                          
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                products[index].images[0], height: 150, width: 250, fit:BoxFit.cover,
                              ),
                              SizedBox(height: 5),
                              Center(child: Text(products[index].title, style: TextStyle(fontWeight: FontWeight.bold))),
                              Text(products[index].price.toString()),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          
        );
  }
}