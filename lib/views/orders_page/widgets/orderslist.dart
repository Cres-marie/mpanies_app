// import 'package:flutter/material.dart';
// import 'package:mpanies_app/models/orders.dart';
// import 'package:mpanies_app/utils/constants.dart';
// import 'package:mpanies_app/views/checkout_page/checkoutScreen.dart';
// import 'package:mpanies_app/views/home_page/home.dart';
// import 'package:mpanies_app/views/orders_page/ordersScreen.dart';

// import '../../../models/trending.dart';
// import '../../../widgets/hoverWidget.dart';
// import '../../cart_page/widgets/quantityCounter.dart';

// class OrdersList extends StatefulWidget {
//   const OrdersList({super.key});

//   @override
//   State<OrdersList> createState() => _OrdersListState();
// }

// class _OrdersListState extends State<OrdersList> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin:EdgeInsets.only(left: 20, right: 20, bottom: 40),
//       constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 20),
//       child: Column(
//         children: [

//             Container(
//               margin: EdgeInsets.only(top: 50),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(//margin:EdgeInsets.only(left: 100),
//                     child: Text('YOUR SHOPPING BAG', style: headings,)
//                   ),
//                   Container(
//                     height: 40,
//                     width: 200,
//                     child: ElevatedHoverButton(
//                       text: 'Continue Shopping',
//                       defaultColor: Colors.black,
//                       hoverColor: k2SecondaryGold,
//                       onTap: () {
//                         Navigator.pop(context); // Navigate back to the previous page
//                       },
//                           //icon: Icons.shopping_bag,
//                     ),
//                   ),           
//                 ],
//               ),
//             ),
//             SizedBox(height: 60,),
//             Divider(),
//             SizedBox(height: 20,),
          
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(flex:3,
//                 child: Container(margin:EdgeInsets.only(left: 10),
//                 child: Text('Item', style: ordersubheadings,))
//                 ),
//                 //SizedBox(width: 60,),
//                 Expanded(child: Text('Price', style: ordersubheadings,)),
//                 //SizedBox(width: 60,),
//                 Expanded(child: Text('Quantity', style: ordersubheadings,)),
//                 //SizedBox(width: 60,),
//                 Expanded(child: Text('Shipping Cost', style: ordersubheadings,)),
//                 //SizedBox(width: 60,),
//                 Expanded(child: Text('SubTotal', style: ordersubheadings,))
//               ],
//             ),
//           SizedBox(height: 20,),
//           Divider(),
//           SizedBox(height: 20,),

//           ListView.builder(
//             shrinkWrap: true,
//             itemCount: myOrders.length,
//             itemBuilder: (BuildContext context, int index) {
//               final Orders order = myOrders[index];
//               return Column(
//                 children: [
//                   Row(
//                     children: [
//                       Expanded(
//                         flex: 3,
//                         child: Row(
//                           children: [
                            
//                             Container(
//                               color: kPrimaryColor,
//                               width: 200,// Adjust the width as needed
//                               padding: EdgeInsets.all(20),
//                               margin: EdgeInsets.only(left:10),
//                               child: Image.asset(order.imageUrl, width: 200, height: 120,)
//                             ),
                              
                            
//                             SizedBox(width: 10,),
//                             Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(order.description),
                                
                              
//                               TextButton(
//                                 onPressed: (){
//                                   // Navigator.push(
//                                   //   context,
//                                   //   MaterialPageRoute(builder: (context) => Home()),
//                                   // );
//                                 }, 
//                                 style: ElevatedButton.styleFrom(
//                                   fixedSize: const Size(
//                                     120,
//                                     50,
//                                   ),
//                                 ),
//                                 child: ListTile(title: Text('Remove', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, color: Colors.blue, decoration: TextDecoration.underline,))),
//                               ),
//                                 ]
//                               ),
//                             )                    
//                           ],
//                         ),
//                       ),
//                       Expanded(child: Text(order.price)),
//                       Expanded(child: QuantityCounter(onChanged: (quantity) {
//                         print('Quantity changed: $quantity');
//                       },
//                       initialValue: 1,)
//                       ), // You can use your QuantityCounter widget here
//                       Expanded(child: Text(order.price)), // You need to calculate subtotal based on quantity and price
//                       Expanded(
//                         child: Text('Sub Total')
//                       ),
//                     ],
//                   ),
//                   Divider()
//                 ],
//               );
              
//             },
//           ),
//           SizedBox(height:20),

//           // Row(
//           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //     //crossAxisAlignment: CrossAxisAlignment.start,
//           //   children: [
//           //     Expanded(flex:3,
//           //       child: Container(//margin:EdgeInsets.only(left: 100),
//           //       child: Text(''))
//           //     ),
//           //       //SizedBox(width: 60,),
//           //     Expanded(child: Text('')),
//           //       //SizedBox(width: 60,),
//           //     Expanded(child: Text('Bag Total:', style: ordersubheadings,)),
//           //       //SizedBox(width: 60,),
//           //     Expanded(child: Text('Total', style: ordersubheadings,)),
//           //       //SizedBox(width: 60,),
//           //     Expanded(child: Text(''))
//           //   ],
//           // ),


//           Container(
//             margin: EdgeInsets.only(right: 100),
//             child: Row(
//               children: [
//                 Container(
//                   child: TextButton(
//                     onPressed: (){
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Home()),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       fixedSize: const Size(180,50,),
//                     ), 
//                     child: ListTile(title: Text('Continue Shopping', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, color: Colors.black, decoration: TextDecoration.underline,))),
//                   ),
//                 ),
          
//                 Spacer(),
//                 Spacer(),
//                 //Spacer(),
                
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,                        
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('Sub Total:', style: ordersubheadings,),
//                               Text('\$750', style: ordersubheadings,),
//                             ],
//                           ),
//                           SizedBox(height: 20,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('Shipping Cost:', style: ordersubheadings,),
//                               Text('\$750', style: ordersubheadings,),
//                             ],
//                           ),
//                           SizedBox(height: 20,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('Total:', style: ordersubheadings,),
//                               Text('\$750', style: ordersubheadings,),
//                             ],
//                           ),

//                           SizedBox(height: 20,),
          
//                     Container(
//                       height: 40,
//                       width: 400,
//                       child: ElevatedHoverButton(
//                       text: 'CheckOut',
//                       defaultColor: Colors.black,
//                       hoverColor: k2SecondaryGold,
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => Checkout()),
//                         ); // Navigate back to the previous page
//                       },
//                       icon: Icons.lock,
//                     ),
//                     ),           
//                         ],
//                       ),
//                     ),
                  
                
          
          
          
//               ],
//             ),
//           )

          
//         ],
//       ),
//     );
//   }
// }








import 'package:flutter/material.dart';
import 'package:mpanies_app/models/orders.dart';

import '../../cart_page/widgets/quantityCounter.dart';
 

class OrdersListTable extends StatefulWidget {
  OrdersListTable({Key? key}) : super(key: key);

  @override
  State<OrdersListTable> createState() => _OrdersListTableState();
}

class _OrdersListTableState extends State<OrdersListTable> {
  // List to keep track of selected rows
  List<bool> selectedRows = List.generate(myOrders.length, (index) => false);

  bool _selectAll = false;

  // Function to update selected rows and trigger a rebuild
  void _updateSelectedRow(int index, bool isSelected) {
    setState(() {
      selectedRows[index] = isSelected;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 2,
        color: Colors.white,
        child: PaginatedDataTable(
          //header: Text('Category List'), // Display a header for the table
          columns: [
            DataColumn(label: Text('Item')),       
            DataColumn(label: Text('Price')), 
            DataColumn(label: Text('Quantity')),    
            DataColumn(label: Text('Shipping Cost')),
            DataColumn(label: Text('Sub Total')),
          ],
          source: _OrdersDataTableSource(selectedRows, _updateSelectedRow),
          rowsPerPage: 5, // Number of rows to display per page
           // Increase the height of data cells
          dataRowMaxHeight: 140, 
        ),
      ),
    );
  }
}

class _OrdersDataTableSource extends DataTableSource {
  final List<bool> selectedRows;
  final Function(int, bool) updateSelectedRow; // Callback function

  _OrdersDataTableSource(this.selectedRows, this.updateSelectedRow);

  @override
  DataRow? getRow(int index) {
    return DataRow(
      cells: [
        
        DataCell(
          
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100, width: 120,
                  child: Image.asset(myOrders[index].imageUrl, height: 50, width: 80, fit: BoxFit.cover)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [               
                    Text(myOrders[index].description),
                    TextButton(
                      onPressed: (){
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => Home()),
                                    // );
                      }, 
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(
                          120,
                          20,
                        ),
                      ),
                      child: ListTile(title: Text('Remove', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, color: Colors.blue, decoration: TextDecoration.underline,))),
                    ),
                  ],
                )
              ],
            ),
          ),
         // Display the category name
        DataCell(Text(myOrders[index].price)), // Display the item number
        DataCell(
          QuantityCounter(
            onChanged: (quantity) {
              print('Quantity changed: $quantity');
            },
            initialValue: 1
          )
        ),
        DataCell(Text(myOrders[index].price)),
        DataCell(Text(myOrders[index].price)),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => myOrders.length; // Total number of rows in the table

  @override
  int get selectedRowCount => selectedRows.where((isSelected) => isSelected).length;
  // Number of selected rows
}
