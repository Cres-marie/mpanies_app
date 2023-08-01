import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class BodyContainer extends StatefulWidget {
  const BodyContainer({super.key});

  @override
  State<BodyContainer> createState() => _BodyContainerState();
}

class _BodyContainerState extends State<BodyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: k3TertiaryColor,
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            //it will adjust its size according to screeen
            AutoSizeText(
              "Discover",
              maxLines: 1,
              style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            AutoSizeText(
              "The Secrets of Beauty",
              maxLines: 1,
              style: TextStyle(
                fontSize: 56,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AutoSizeText(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              textAlign: TextAlign.center,maxLines: 3,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            
            //SizedBox(height: 40,),    
            Container(
              height: 60,
              width: 140,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Set background color to black
                //color: Colors.white, // Set text color to white
                  elevation: 4, // Set the elevation shadow
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Set border radius
                ),
                child: Text('View More',style: TextStyle(fontSize: 16),),
              ),
            )
          ],
        ),
      ),
    );
  }
}