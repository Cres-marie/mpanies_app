
import 'package:flutter/material.dart';
import 'package:mpanies_app/models/orders.dart';

import '../../../utils/constants.dart';
import '../../../widgets/hoverWidget.dart';
import '../../cart_page/widgets/quantityCounter.dart';
import '../../checkout_page/checkoutScreen.dart';
import '../../home_page/home.dart';
 

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
      child: Column(
        children: [

          Container(
            width: MediaQuery.of(context).size.width,
            //padding: EdgeInsets.all(30),
            child: Card(
              elevation: 2,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
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
                  rowsPerPage: myOrders.length > 6 ? 6 : myOrders.length, // Number of rows to display per page
                   // Increase the height of data cells
                  dataRowMaxHeight: 140, 
                ),
              ),
            ),
            
          ),

          SizedBox(height: 20,),
        ]
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
