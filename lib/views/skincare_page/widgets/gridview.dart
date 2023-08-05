import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mpanies_app/views/skincare_page/widgets/rating.dart';
import '../../../models/trending.dart';
import '../../../utils/constants.dart';

class WebGridView extends StatefulWidget {
  const WebGridView({super.key});

  @override
  State<WebGridView> createState() => _WebGridViewState();
}

class _WebGridViewState extends State<WebGridView> {
  List<bool> _isHovered = List.filled(products.length, false); // Initialize hover states
  
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
                color:kTertiaryPeach ,
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
                    childAspectRatio:0.7,
                    mainAxisExtent: 340 // increase card height
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Container(
                      
                      child: Card(
                        elevation: 6,
                        child: Container(
                          color: kPrimaryColor,
                          width:200,
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                // Product image
                                  Image.asset(
                                    products[index].imageUrl,
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          _isHovered[index] = true; // Set hover state to true
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          _isHovered[index] = false; // Set hover state to false
                                        });
                                      },
                                    child: InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.favorite, 
                                        color:  _isHovered[index] ? kSecondaryColorPink : Colors.grey, 
                                        size: 25,
                                      )
                                    ),
                                    ),
                                  ),                    
                                ]
                              ),
                              SizedBox(height: 8),
                              
                              Text(products[index].description, style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 8),
                              Text(products[index].price, style: TextStyle(fontWeight: FontWeight.bold, color:Colors.blue),),
                              SizedBox(height: 8),
                              RatingStar(),
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
                color:kTertiaryPeach ,
                child: Text('Skin Care Products', style: sideheadings),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only( top: 20),
                //height: 300,
                child: Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),// not to affect scrolling
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns in the grid
                        crossAxisSpacing: 10, // Spacing between columns
                        mainAxisSpacing: 14, // Spacing between rows
                        mainAxisExtent: 350 // increase card height
                      ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return Container(
                          
                          child: Card(
                            elevation: 6,
                            child: Container(
                              color: kPrimaryColor,
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10.0),
                                    child: Image.asset(
                                      products[index].imageUrl, height: 150, width: 150, fit:BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Center(child: Text(products[index].description, style: TextStyle(fontWeight: FontWeight.bold))),
                                  SizedBox(height: 5),
                                  Text(products[index].price, style: TextStyle(fontWeight: FontWeight.bold, color:Colors.blue)),
                                  SizedBox(height: 5),
                                  RatingBar.builder(
                                    initialRating: 4, // Set the initial rating value here
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemSize: 15,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: kSecondaryColorPink,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
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
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          
        );
  }
}