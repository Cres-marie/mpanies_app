import 'package:flutter/material.dart';
import 'package:mpanies_app/views/checkout_page/widgets/countrypicker.dart';

class Checkoutfield extends StatefulWidget {
  const Checkoutfield({super.key});

  @override
  State<Checkoutfield> createState() => _CheckoutfieldState();
}

class _CheckoutfieldState extends State<Checkoutfield> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(30), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('1. Enter Address Details', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20, )),
            SizedBox(height: 35,),
            Text('*Country/Region', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
            SizedBox(height: 10,),  
            CountryPicker(),
      
            SizedBox(height: 20,),
      
            Text('*Street Address', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
            SizedBox(height: 10,),  
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    //width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    //width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Apartment, building, floor,etc',
              ),
            ),
      
            SizedBox(height: 20,),
      
            Text('*City', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
            SizedBox(height: 10,),  
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    //width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    //width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: '',
              ),
            ),
      
            SizedBox(height: 20,),
      
            Text('*Phone Number', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
            SizedBox(height: 10,),  
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    //width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    //width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: '',
              ),
            ),
          ],
        ),
      ),

    );
  }
}