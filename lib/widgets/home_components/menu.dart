import 'package:flutter/material.dart';
import 'package:mpanies_app/utils/constants.dart';
import 'package:mpanies_app/views/bodycare.dart';
import 'package:mpanies_app/views/hair.dart';
import 'package:mpanies_app/views/makeup.dart';
import 'package:mpanies_app/views/nails.dart';
import 'package:mpanies_app/views/skincare.dart';
import 'package:mpanies_app/widgets/sidemenu.dart';


class HeaderMenu extends StatelessWidget {

  final String title;
  final VoidCallback press;
  const HeaderMenu({required this.title,required this.press,});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Text(
          title,
          style: navheadings,
        ),
      ),
    );
  }
}

class SideMenu extends StatelessWidget {

  final String title;
  final VoidCallback press;
  const SideMenu({required this.title,required this.press,});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Text(
          title,
          style: sideheadings,
        ),
      ),
    );
  }
}


class MobMenu extends StatelessWidget {
  const MobMenu({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideMenu(
            press: () {},
            title: "New Arrivals",
            
          ),
          SizedBox(
            height: 20,
          ),
          SideMenu(
            press: () {},
            title: "Trending",
          ),
          SizedBox(
            height: 20,
          ),
          SideMenu(
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> SkinCare())
              );
            },
            title: "Skin Care",
          ),
          SizedBox(
            height: 20,
          ),
          SideMenu(
            press: () {},
            title: "Hair",
          ),
          SizedBox(
            height: 20,
          ),
          SideMenu(
            press: () {},
            title: "Make Up",
          ),
          SizedBox(
            height: 20,
          ),
          SideMenu(
            press: () {},
            title: "Body Care",
          ),
          SizedBox(
            height: 20,
          ),
          SideMenu(
            press: () {},
            title: "Nails",
          ),
        ],
      ),
    
    );
  }
}


class WebHeaderMenu extends StatelessWidget {
  const WebHeaderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HeaderMenu(
            press: () {},
            title: "New Arrivals",
          ),
          
          HeaderMenu(
            press: () {},
            title: "Trending",
          ),
          
          HeaderMenu(
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> SkinCare())
              );
            },
            title: "Skin Care",
          ),
          
          HeaderMenu(
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> Hair())
              );
            },
            title: "Hair",
          ),
          
          HeaderMenu(
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> MakeUp())
              );
            },
            title: "Make Up",
          ),
          
          HeaderMenu(
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> BodyCare())
              );
            },
            title: "Body Care",
          ),
          
          HeaderMenu(
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> Nails())
              );
            },
            title: "Nails",
          ),
    
        ],
    
      ),
    );
  }
}

class MobFooterMenu extends StatelessWidget {
  const MobFooterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Wrap(
    
        children: [
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('STORE',style: fheadings, ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.place, color: Colors. white,),
                  Text('Kampala, Uganda',style: fsubheadings, )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.schedule, color: Colors. white,),
                  Text('09:00am - 06:00pm ',style: fsubheadings, )
                ],
              )
            ],
          ),
    
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('REACH US', style: fheadings,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors. white,),
                    Text('(0000) 123-4789',style: fsubheadings, )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.email, color: Colors. white,),
                    Text('info@example.com',style: fsubheadings, )
                  ],
                )
              ],
            ),
    
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('INFO',style: fheadings, ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.keyboard_arrow_right, color: Colors. white,),
                  Text('Contact', style: fsubheadings,)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.keyboard_arrow_right, color: Colors. white,),
                  Text('Shipping & Returns', style: fsubheadings,)
                ],
              )
            ],
          ),             
          
        ],
      ),
    );
  }
}

class WebFooterMenu extends StatelessWidget {
  const WebFooterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Wrap(
    
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('STORE',style: fheadings, ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.place, color: Colors. white,),
                    Text('Kampala, Uganda', style: fsubheadings, )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.schedule, color: Colors. white,),
                    Text('09:00am - 06:00pm ',style: fsubheadings, )
                  ],
                )
              ],
            ),
          
    
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('REACH US',style: fheadings, ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors. white,),
                    Text('(0000) 123-4789',style: fsubheadings, )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.email, color: Colors. white,),
                    Text('info@example.com',style: fsubheadings, )
                  ],
                )
              ],
            ),
    
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('INFO', style: fheadings,),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.keyboard_arrow_right, color: Colors. white,),
                  Text('Contact',style: fsubheadings, )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.keyboard_arrow_right, color: Colors. white,),
                  Text('Shipping & Returns', style: fsubheadings,)
                ],
              )
            ],
          ),
            ]          
          )
        ],
      ),
    );
  }
}