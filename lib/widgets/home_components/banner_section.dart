import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';


class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //backgroundColor: Colors.black;
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: AboutSection(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Container(
                color: k2SecondaryColor,
                height: 300,
                child: CarouselSlider(
                  items: [
                    Image.asset(
                      "assets/images/slider-1.png",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/slider-2.png",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/slider-5.png",
                      fit: BoxFit.cover,
                    ),
                    // Add more images to create a carousel effect
                  ],
                  options: CarouselOptions(
                    height: 300,
                    autoPlay: true,
                    aspectRatio: 1.0,
                    enlargeCenterPage: true,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MobBanner extends StatefulWidget {
  const MobBanner({Key? key}) : super(key: key);

  @override
  _MobBannerState createState() => _MobBannerState();
}

class _MobBannerState extends State<MobBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: k2SecondaryColor,
          height: 300,
          child: CarouselSlider(
            items: [
              Image.asset(
                "assets/images/slider-1.png",                
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/images/slider-2.png",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/images/slider-5.png",
                fit: BoxFit.cover,
              ),
              // Add more images to create a carousel effect
            ],
            options: CarouselOptions(
              height: 300,
              autoPlay: true,
              aspectRatio: 1.0,
              enlargeCenterPage: true,
            ),
          ),
        ),
        
        AboutSection(),
      ],
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
      padding: EdgeInsets.all(70),
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            textAlign: TextAlign.center,
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
    );
  }
}

