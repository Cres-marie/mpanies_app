import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mpanies_app/views/home_page/home.dart';
import 'package:mpanies_app/views/home_page/widgets/person.dart';
import 'package:mpanies_app/views/home_page/widgets/searchbar.dart';
import 'package:mpanies_app/views/home_page/widgets/shoppingbag.dart';

//import 'constants.dart';
import '../../../models/responsive.dart';
import '../../../utils/constants.dart';
import 'menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            // it  display only on mobile and tab
            //not working
            if (!Responsive.isDesktop(context))
            Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              icon: Icon(Icons.menu, color: Colors.black,))
            ),


            
            InkWell(
              onTap: () {
                Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> Home())
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/images/mpanies1.svg', height: 100, width: 180,colorFilter: ColorFilter.mode(buttonColor, BlendMode.srcIn),),
              )
              //Image.asset('assets/images/rsz_mpanies.png', height: 100, width: 180,color: Colors.black,)
            ),
            Spacer(),
            
            _size.width > 650
                ? WebSearchBar()
                : MobSearchIcon(),

            SizedBox(width: 10,),
            
            ShoppingBag(),

            SizedBox(width: 10,),

            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: PersonIcon(),
            )
            
          ],
        ),

        if (Responsive.isDesktop(context)) Container(
            width: double.infinity,
            color: Colors.black,
            child:  WebNavMenu(),
        ),      
      ],
    );

  }
}


