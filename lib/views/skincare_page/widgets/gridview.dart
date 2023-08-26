import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mpanies_app/models/products.dart';
import 'package:mpanies_app/views/home_page/widgets/elevatedButton.dart';
import 'package:mpanies_app/views/orders_page/ordersScreen.dart';
import 'package:mpanies_app/views/skincare_page/widgets/rating.dart';
import 'package:provider/provider.dart';
import '../../../models/responsive.dart';
import '../../../models/trending.dart';
import '../../../subCategoryProvider.dart';
import '../../../utils/constants.dart';
import '../../../widgets/hoverWidget.dart';
import '../../cart_page/productPage.dart';

class WebGridView extends StatefulWidget {

  final int crossAxisCount;
  final double childAspectRatio;
  const WebGridView({super.key, required this.crossAxisCount, required this.childAspectRatio});

  @override
  State<WebGridView> createState() => _WebGridViewState();
}

class _WebGridViewState extends State<WebGridView> {
  List<bool> _isHovered = List.filled(products.length, false); // Initialize hover states
  
  
  @override
  Widget build(BuildContext context) {

    final filteredProducts =
        Provider.of<SubcategoryProvider>(context).filteredProducts;


    return Container(
          //flex: 4,
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
                    crossAxisCount: widget.crossAxisCount , // Number of columns in the grid
                    crossAxisSpacing: 20, // Spacing between columns
                    mainAxisSpacing: 14, // Spacing between rows
                    childAspectRatio: widget.childAspectRatio,
                    mainAxisExtent: 340 // increase card height
                  ),
                  itemCount: filteredProducts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ProductPage(product: filteredProducts[index])),
                                          );
                        },
                        child: Card(
                          elevation: 6,
                          child: Container(
                            color: kPrimaryColor,
                            width:200,
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [                               
                                  // Product image
                                    Container(
                                      width: 230,
                                      
                                      child: Image.asset(
                                        filteredProducts[index].images,
                                        height: 150,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                                                  
                                SizedBox(height: 8),
                                
                                Text(filteredProducts[index].title, style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 8),
                                Text('\$ ${filteredProducts[index].price.toString()}', style: TextStyle(fontWeight: FontWeight.bold, color:Colors.blue),),
                                SizedBox(height: 8),
                                RatingStar(),
                                SizedBox(height: 8),
                                Container(
                                  height: 40,
                                  width: 140,
                                  child: Container(
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
                                  ),
                      
                                ),
                              ],
                            ),
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

class ResponsiveGrid extends StatefulWidget {

  const ResponsiveGrid({super.key});

  @override
  State<ResponsiveGrid> createState() => _ResponsiveGridState();
}

class _ResponsiveGridState extends State<ResponsiveGrid> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Responsive(
        mobile: WebGridView(
          crossAxisCount: size.width < 650 ? 2 : 4,
          childAspectRatio: size.width < 650 ? 2 : 2.3,
        ),
        tablet: WebGridView(
          crossAxisCount: size.width < 900 ? 3 : 4,
          childAspectRatio: size.width < 900 ? 2.5 : 1.5,
        ),
        desktop: WebGridView(
          crossAxisCount: size.width < 1400 ? 4 : 5,
          childAspectRatio: size.width < 1400 ? 2.3 : 2.1,
          
        ),
      ),
    );
  }
}
