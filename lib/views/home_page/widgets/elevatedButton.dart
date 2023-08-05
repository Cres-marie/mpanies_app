import 'package:flutter/material.dart';

class ElevatedButtonIcon extends StatefulWidget {
  const ElevatedButtonIcon({super.key});

  @override
  State<ElevatedButtonIcon> createState() => _ElevatedButtonIconState();
}

class _ElevatedButtonIconState extends State<ElevatedButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      );
  }
}