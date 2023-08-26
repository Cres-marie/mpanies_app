import 'package:flutter/material.dart';

import '../../models/responsive.dart';
import '../../utils/constants.dart';
import '../home_page/widgets/footer.dart';
import '../home_page/widgets/header_container.dart';
import '../home_page/widgets/menu.dart';
import '../home_page/widgets/newsletter.dart';
import '../skincare_page/widgets/gridview.dart';
import '../skincare_page/widgets/sidemenu.dart';

class Nails extends StatefulWidget {
  const Nails({super.key});

  @override
  State<Nails> createState() => _NailsState();
}

class _NailsState extends State<Nails> {
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