import 'package:flutter/material.dart';
import 'package:mpanies_app/views/pageViewer.dart';

import '../../../models/responsive.dart';
import '../../../utils/constants.dart';
import 'banner_section.dart';
import 'header.dart';

class HeaderContainer extends StatefulWidget {
  const HeaderContainer({super.key});

  @override
  State<HeaderContainer> createState() => _HeaderContainerState();
}

class _HeaderContainerState extends State<HeaderContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //color: k3TertiaryPale,
      //padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            ////padding: EdgeInsets.all(kPadding),
            //constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Header(),
                //CustomPageViewer()
                // SizedBox(
                //   height: 20,
                // ),
                // Responsive.isDesktop(context) ? BannerSection() : MobBanner(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}