import 'package:flutter/material.dart';
import 'package:mpanies_app/models/products.dart';
import 'package:mpanies_app/utils/constants.dart';
import 'package:mpanies_app/views/skincare_page/widgets/filters.dart';
import 'package:provider/provider.dart';

import '../../../models/subcategories.dart';
import '../../../subCategoryProvider.dart';

class WebSideView extends StatefulWidget {
  const WebSideView({super.key});

  @override
  State<WebSideView> createState() => _WebSideViewState();
}

class _WebSideViewState extends State<WebSideView> {
  @override
  Widget build(BuildContext context) {
    return 
      Container(
            margin: EdgeInsets.only(right: 40, top: 50, left: 10) ,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [  
                ListTile(
                  title: Text('Product Types', style: sideheadings,),
                ),                      
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: productItems.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Provider.of<SubcategoryProvider>(context, listen: false)
                      .setSelectedSubcategory(productItems[index].subCategory);
                      },
                      child: ListTile(
                        title: Text(productItems[index].subCategory),
                        // Add onTap if you want to handle item clicks
                      ),
                    );
                  },
                ),
                SizedBox(height: 20,),
                Divider(),
                AvailabilityCheckbox(),
                SizedBox(height: 20,),
                Divider(),
                PriceRange()

              ],
            ),
          
        

        //ResponsiveGrid()
        
      
    );
  }
}


// class MobSideView extends StatefulWidget {
//   const MobSideView({super.key});

//   @override
//   State<MobSideView> createState() => _MobSideViewState();
// }

// class _MobSideViewState extends State<MobSideView> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 10, top: 10, ) ,// spacing the whole container from the margin
//       child: Column(
//         children: [
//           // Container(
//           //     height: 50,
//           //     width: MediaQuery.of(context).size.width,
//           //     child: ListView.builder(
//           //       scrollDirection: Axis.horizontal,
//           //       itemCount: categories.length,
//           //       itemBuilder: (BuildContext context, int index) {
//           //         return InkWell(
//           //           onTap: (){},
//           //           child: Container(
//           //             margin: EdgeInsets.symmetric(horizontal: 4),// adding spacing btn the cards
//           //             child: Card(
//           //               color: Colors.black,
//           //               elevation: 5,
//           //               shape: RoundedRectangleBorder(
//           //                 borderRadius: BorderRadius.circular(10),
//           //               ), 
//           //               child: Padding(
//           //                 padding: const EdgeInsets.all(8.0),
//           //                 child: Center(child: Text(categories[index].name, style:navheadings)),
//           //               ),
//           //             ),
//           //           ),
//           //         );
//           //       },
//           //     ),
//           //   ),
          
//           MobGridView()
    
//         ],
//       ),
//     );
//   }
// }