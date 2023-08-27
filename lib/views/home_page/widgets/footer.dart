import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mpanies_app/widgets/hoverWidget.dart';

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
                      SvgPicture.asset('assets/images/mpanies1.svg', height: 100, width: 180,colorFilter: ColorFilter.mode(buttonColor, BlendMode.srcIn),),
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
            if (!Responsive.isDesktop(context))   MobFooterMenu(),
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatefulWidget {

  final String icon;
  const SocialIcon({required this.icon,});

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        height: 35,
        width: 35,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            )),
        child: SvgPicture.asset(widget.icon),
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
                      HoverIcon(
                        iconData: Icons.place,
                        onPressed: () {}, 
                        size: 20,
                      ),
                      HoverText(
                        text: 'Kampala\, Uganda',
                        onPressed: () {},
                        size: 16.0, 
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.schedule, color: Colors. white,),
                      HoverText(
                        text: '09:00am - 06:00pm',
                        onPressed: () {},
                        size: 16.0, 
                      )
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
                      HoverText(
                        text: '(0000) 123-4789',
                        onPressed: () {},
                        size: 16.0, 
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.email, color: Colors. white,),
                      HoverText(
                        text: 'info@example.com',
                        onPressed: () {},
                        size: 16.0, 
                      )
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
                      HoverText(
                        text: 'Contact',
                        onPressed: () {},
                        size: 16.0, 
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.keyboard_arrow_right, color: Colors. white,),
                      HoverText(
                        text: 'Shipping & Returns',
                        onPressed: () {},
                        size: 16.0, 
                      )
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
                  HoverText(
                    text: 'Kampala\, Uganda',
                    onPressed: () {},
                    size: 16.0, 
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.schedule, color: Colors. white,),
                  HoverText(
                    text: '09:00am - 06:00pm',
                    onPressed: () {},
                    size: 16.0, 
                  )
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
                    HoverText(
                      text: '(0000) 123-4789',
                      onPressed: () {},
                      size: 16.0, 
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.email, color: Colors. white,),
                    HoverText(
                      text: 'info@example.com',
                      onPressed: () {},
                      size: 16.0, 
                    )
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
                  HoverText(
                    text: 'Contact',
                    onPressed: () {},
                    size: 16.0, 
                  )
            
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.keyboard_arrow_right, color: Colors. white,),
                  HoverText(
                    text: 'Shipping & Returns',
                    onPressed: () {},
                    size: 16.0, 
                  )

                ],
              )
            ],
          ),                      
        ],
      ),
    );
  }
}

