import 'package:flutter/material.dart';
import 'package:mpanies_app/views/home_page/widgets/footer.dart';

import '../../models/responsive.dart';
import '../../utils/constants.dart';
import '../home_page/widgets/header_container.dart';
import '../home_page/widgets/menu.dart';
import '../home_page/widgets/newsletter.dart';
import '../skincare_page/widgets/gridview.dart';
import '../skincare_page/widgets/sidemenu.dart';

class Hair extends StatefulWidget {
  const Hair({super.key});

  @override
  State<Hair> createState() => _HairState();
}

class _HairState extends State<Hair> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "",
                  style: bheadings,
                ),
              ),
            ),
            MobNavMenu()
          ],
        ),
      ),
      body: Column(
            mainAxisSize: MainAxisSize.max,

            children: [   
              HeaderContainer(),     
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        
                          if (Responsive.isDesktop(context))
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
                ),
              ),
      
            ]
          
          
        
      ),
    );
  }
}