import 'package:flutter/material.dart';

class Paymentfield extends StatefulWidget {
  const Paymentfield({super.key});

  @override
  State<Paymentfield> createState() => _PaymentfieldState();
}

class _PaymentfieldState extends State<Paymentfield> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              Image.asset('assets/images/paypal.webp', height: 70, width:100),
              Image.asset('assets/images/visa.jpg',height: 50, width:80),
              Image.asset('assets/images/mc.jpg',height: 50, width:80)
            ],
          ),

          Text('*Card Number', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
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

          Text('*Name on Card', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
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

          Text('*Expiry Date', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
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
              hintText: 'Apartment,building,floor,etc',
            ),
          ),

          SizedBox(height: 20), 

          Container(
            height: 50,
            width: 400,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Set background color to black
                //color: Colors.white, // Set text color to white
                elevation: 4, // Set the elevation shadow
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Set border radius
              ),                      
              child: Text('Pay \$750',style: TextStyle(fontSize: 16),),
            ),
          ),


        ],
      ),

    );
  }
}