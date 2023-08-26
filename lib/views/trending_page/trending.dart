import 'package:flutter/material.dart';

import '../../models/responsive.dart';
import '../../utils/constants.dart';
import '../home_page/widgets/footer.dart';
import '../home_page/widgets/header_container.dart';
import '../home_page/widgets/menu.dart';
import '../home_page/widgets/newsletter.dart';
import '../skincare_page/widgets/gridview.dart';
import '../skincare_page/widgets/sidemenu.dart';

class TrendingProduct extends StatefulWidget {
  const TrendingProduct({super.key});

  @override
  State<TrendingProduct> createState() => _TrendingProductState();
}

class _TrendingProductState extends State<TrendingProduct> {
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