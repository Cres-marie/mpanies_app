import 'package:flutter/material.dart';

class Checkoutfield extends StatefulWidget {
  const Checkoutfield({super.key});

  @override
  State<Checkoutfield> createState() => _CheckoutfieldState();
}

class _CheckoutfieldState extends State<Checkoutfield> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('*Email', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
          SizedBox(height: 10,),  
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(16),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                  //width: 3,
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
              //hintText: 'Email',
            ),
          ),

          SizedBox(height: 20,),

          Text('*Password', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
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
              hintText: 'Atleast 8 characters',
            ),
          ),


        ],
      ),

    );
  }
}