import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mpanies_app/views/cart_page/widgets/quantityCounter.dart';
import 'package:mpanies_app/views/cart_page/widgets/quantityCounter.dart';
import 'package:mpanies_app/views/skincare_page/widgets/rating.dart';

class ProductOptions extends StatefulWidget {
  const ProductOptions({super.key});

  @override
  State<ProductOptions> createState() => _ProductOptionsState();
}

class _ProductOptionsState extends State<ProductOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            width: 65,
            height: 23,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(11)
            ),
            child: Text(
              'IN STOCK', style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(height: 10,),
          Text('Pink Skin Clay Mask'. toUpperCase(),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 5,),
          Text('Skin Care', style: TextStyle(fontSize: 16),),
          Row(
            children: [
              Text(
                "\$7.50",
                style: TextStyle(fontSize: 18,),
              ),
              SizedBox(width: 15,),
              Text(
                "\$17.50",
              style: TextStyle(fontSize: 18,color: Colors.red, decoration: TextDecoration.lineThrough),
              ),

              SizedBox(width: 25,),

              RatingStar()
            ],
          ),
          SizedBox(height: 15,),
          AutoSizeText('Enriched with a nourishing blend of botanical extracts and potent antioxidants, our mask offers a spa-like indulgence in the comfort of your own home.',
          maxLines: 4, style: TextStyle(height: 1.5),
          ),
          SizedBox(height: 10,),
          QuantityCounter(
            onChanged: (quantity) {
            print('Quantity changed: $quantity');
            },
          initialValue: 1,
        ),
          SizedBox(height: 20,),
          Container(
            height: 40,
            width: 240,
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
    );
  }
}