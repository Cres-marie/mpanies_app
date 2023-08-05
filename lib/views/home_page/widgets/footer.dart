import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/responsive.dart';
import '../../../utils/constants.dart';
import 'menu.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Container(
        //padding: EdgeInsets.all(kPadding),
        //constraints: BoxConstraints(maxWidth: kMaxWidth),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Image.asset('assets/images/mpanies.png', height: 100, width: 100, color: k2SecondaryGold ,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialIcon(
                            icon: "assets/icons/google-icon.svg",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SocialIcon(
                            icon: "assets/icons/facebook-2.svg",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SocialIcon(
                            icon: "assets/icons/twitter.svg",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                if (Responsive.isDesktop(context))
                  Expanded(flex: 3, child: WebFooterMenu()),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            if (!Responsive.isDesktop(context)) MobFooterMenu(),
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {

  final String icon;
  const SocialIcon({required this.icon,});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
          )),
      child: SvgPicture.asset(icon),
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
                  SizedBox(height: 10,),
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
                  SizedBox(height: 10,),
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
                  SizedBox(height: 10,),
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

class MobFooterMenu extends StatelessWidget {
  const MobFooterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Wrap(   
        children: [          
          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(title:Text('STORE',style: fheadings, ),),
              SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.place, color: Colors. white,),
                  Text('Kampala, Uganda',style: fsubheadings, )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.schedule, color: Colors. white,),
                  Text('09:00am - 06:00pm ',style: fsubheadings, )
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(title:Text('REACH US',style: fheadings, ),),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors. white,),
                    Text('(0000) 123-4789',style: fsubheadings, )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.email, color: Colors. white,),
                    Text('info@example.com',style: fsubheadings, )
                  ],
                )
              ],
            ),
          SizedBox(height: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(title:Text('INFO',style: fheadings, ),),
              SizedBox(height: 4,),
              Row(
                children: [
                  Icon(Icons.keyboard_arrow_right, color: Colors. white,),
                  Text('Contact', style: fsubheadings,)
                ],
              ),
              SizedBox(height: 10,),
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

