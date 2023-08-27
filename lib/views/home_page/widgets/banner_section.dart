import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class webBanner extends StatefulWidget {
  const webBanner({super.key});

  @override
  State<webBanner> createState() => _webBannerState();
}

class _webBannerState extends State<webBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
        return CarouselSlider(
          items: [
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.only(left: 90),
                    child: Image.asset(
                      "assets/images/slider-1.png", width: 300,               
                        fit: BoxFit.cover,
                    ),
                  ),                                
                  SizedBox(width: 80,),
                  Flexible(                  
                    child: Container( 
                      padding:EdgeInsets.only(right:120) ,
                      child: AboutSection()
                    )
                  ),
                ],
              ),
            ),
      
            Container(
              child: Row(
                children: [                      
                  //SizedBox(width: 20,),
                  Flexible(                  
                    child: Container(
                      padding: EdgeInsets.only(left: 90),
                      child: AboutSection()
                    )
                  ),
                  SizedBox(width: 80,),
                  Container(
                    padding: EdgeInsets.only(right: 90),
                    //margin: EdgeInsets.only(left: 60),
                    child: Image.asset(
                      "assets/images/slider-2.png", width: 400,                
                        fit: BoxFit.cover,
                    ),
                  ),          
                ],
              ),
            )
          ], 
          options: CarouselOptions(
            height: 500,
            autoPlay: true,
            aspectRatio: 1.0,
            enlargeCenterPage: true,
            viewportFraction: 1.0,
          ), 
        );
        }
      ),
    );
  }
}


class MobBanner extends StatefulWidget {
  const MobBanner({super.key});

  @override
  State<MobBanner> createState() => _MobBannerState();
}

class _MobBannerState extends State<MobBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: [
          Container(
            //height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  //height:250,
                  //padding: EdgeInsets.all(30),
                  //margin: EdgeInsets.only(left: 90),
                  child: Image.asset(
                    "assets/images/slider-2.png", width: 250, height: 200,          
                      fit: BoxFit.cover,
                  ),
                ),                                
                //SizedBox(height: 10,),
                                 
                  //Container( 
                    //padding:EdgeInsets.all(20) ,
                    //child: AboutSection()
                  //)
                
              ],
            ),
          ),

          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                      
                //SizedBox(width: 20,),
                Container(
                  //padding: EdgeInsets.only(right: 90),
                  //margin: EdgeInsets.only(left: 60),
                  child: Image.asset(
                    "assets/images/slider-2.png", width: 250, height: 200,                
                      fit: BoxFit.cover,
                  ),
                ),
                //Flexible(                  
                  //child: Container(
                    //padding: EdgeInsets.only(left: 90),
                    //child: AboutSection()
                  //)
                //),
                //SizedBox(height: 10,),         
              ],
            ),
          )
        ], 
        options: CarouselOptions(
          height: 250,
          autoPlay: true,
          aspectRatio: 1.0,
          enlargeCenterPage: true,
          viewportFraction: 1.0
        ), 
      ),
    );
  }
}



class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(right: 100,),
      //padding: EdgeInsets.all(80),
      //constraints: BoxConstraints(maxWidth: kMaxWidth),
      //width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
            "Unveiling Hidden Elegance: Explore and Unearth Beauty's Best-Kept Secrets with Mpanies Exquisite Cosmetics Collection - Your Pathway to Radiant Transformation Awaits!",
             maxLines: 6,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14,
              height: 1.4, wordSpacing: 2
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

