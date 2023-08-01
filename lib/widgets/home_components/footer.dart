import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/responsive.dart';
import '../../utils/constants.dart';
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
                      Image.asset('assets/images/mpanies.png', height: 100, width: 100, color: k2SecondaryColor ,),
                      // Text(
                      //   "Foodie",
                      //   style: TextStyle(
                      //       fontSize: 25.0,
                      //       fontWeight: FontWeight.w900,
                      //       color: kSecondaryColor),
                      // ),
                      
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
