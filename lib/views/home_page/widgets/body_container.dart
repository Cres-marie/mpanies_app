import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class BodyContainer extends StatefulWidget {
  const BodyContainer({super.key});

  @override
  State<BodyContainer> createState() => _BodyContainerState();
}

class _BodyContainerState extends State<BodyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kTertiaryPeach,
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            //it will adjust its size according to screeen
            AutoSizeText(
              "Beauty Deal",
              maxLines: 1,
              style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 12,
            ),
            AutoSizeText(
              "Pick your Beauty products today. 30% off on ",
              textAlign: TextAlign.center,maxLines: 1,
              style: TextStyle(
                fontSize: 14
              ),
            ),
            SizedBox(height: 5,),
            AutoSizeText('most popular cosmetic brands. Order all classy products today!', textAlign: TextAlign.center,maxLines: 3, style: TextStyle(
                fontSize: 14
              ),),
            
            
            //SizedBox(height: 40,),    
            
          ],
        ),
      ),
    );
  }
}