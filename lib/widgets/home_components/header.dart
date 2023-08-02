import 'package:flutter/material.dart';

//import 'constants.dart';
import '../../models/responsive.dart';
import '../../utils/constants.dart';
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
                      icon: Icon(Icons.menu))),
            Image.asset('assets/images/mpanies.png', height: 150, width: 250,),
            
            // Text(
            //   "Foodie",
            //   style: TextStyle(
            //       fontSize: 25.0,
            //       fontWeight: FontWeight.w900,
            //       color: kSecondaryColor),
            // ),
            Spacer(),
            //menu
            

            _size.width > 400
                ? Expanded(
                    child: Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                         // padding: EdgeInsets.only(left: 10, right: 10),
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.withOpacity(0.3)),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14),
                                focusedBorder:
                                    UnderlineInputBorder(borderSide: BorderSide.none),
                                enabledBorder:
                                    UnderlineInputBorder(borderSide: BorderSide.none)),
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.withOpacity(0.3)),
                    ),
                    child: Icon(Icons.search)),
            SizedBox(
              width: 10,
            ),
            
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,size: 32,)
            ),
            
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.person, color: Colors.black,size: 32),
            )
            
          ],
        ),

      if (Responsive.isDesktop(context)) Container(
            width: double.infinity,
            color: Colors.black,
            child: WebHeaderMenu(),
          ),
      

      ],
    );

  }
}
