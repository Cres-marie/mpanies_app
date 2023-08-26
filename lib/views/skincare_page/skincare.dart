import 'package:flutter/material.dart';
import 'package:mpanies_app/views/skincare_page/widgets/filters.dart';
import 'package:mpanies_app/views/home_page/widgets/footer.dart';
import 'package:mpanies_app/views/home_page/widgets/newsletter.dart';
import 'package:mpanies_app/views/skincare_page/widgets/gridview.dart';
import 'package:mpanies_app/views/skincare_page/widgets/sidemenu.dart';

import '../../models/responsive.dart';
import '../../utils/constants.dart';
import '../home_page/widgets/header_container.dart';
import '../home_page/widgets/menu.dart';

class SkinCare extends StatefulWidget {
  const SkinCare({super.key});

  @override
  State<SkinCare> createState() => _SkinCareState();
}

class _SkinCareState extends State<SkinCare> {
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.max,

          children: [         
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
      
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
      
                    Expanded(child: WebSideView()),
                    
                      
                    Expanded(
                      flex: 4,
                      child: ResponsiveGrid())
                       
                  ],
                ),
                NewsLetter(),
                Footer()
        
                
              ],
            ),
    
          ]
        
        
      
    );
  }
}