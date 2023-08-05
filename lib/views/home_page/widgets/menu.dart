import 'package:flutter/material.dart';
import 'package:mpanies_app/views/bodycare_page/bodycare.dart';
import 'package:mpanies_app/views/hair_page/hair.dart';
import 'package:mpanies_app/views/home_page/home.dart';
import 'package:mpanies_app/views/makeup_page/makeup.dart';
import 'package:mpanies_app/views/nails_page/nails.dart';
import 'package:mpanies_app/views/trending_page/trending.dart';
import 'package:mpanies_app/widgets/hoverWidget.dart';
import '../../../models/categories';
import '../../../models/trending.dart';
import '../../new_page/new.dart';
import '../../skincare_page/skincare.dart';

class MobNavMenu extends StatefulWidget {
  const MobNavMenu({super.key});

  @override
  State<MobNavMenu> createState() => _MobNavMenuState();
}

class _MobNavMenuState extends State<MobNavMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: brand.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){},
            child: ListTile(
              title: Text(brand[index].name),
            
            ),
          );
        },
      ),
    );
  }
}




class WebNavMenu extends StatefulWidget {
  const WebNavMenu({super.key});

  @override
  State<WebNavMenu> createState() => _WebNavMenuState();
}

class _WebNavMenuState extends State<WebNavMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Container(
          //   height: 50,
          //   color: Colors.black,
          //   width: MediaQuery.of(context).size.width,
          //   child: ListView.builder(
          //shrinkWrap :true,
          //     scrollDirection: Axis.horizontal,
          //     itemCount: brand.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return InkWell(
          //         onTap: (){},
          //         child: Container(              
          //           child: Center(child: Text(brand[index].name, style:navheadings)),                
          //         ),
          //       );
          //     },
          //   ),
          // ),
          for (Category category in brand)
            HoverText(
              text:category.name,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => getPageForCategory(category)),
                );
              },
              size: 18.0,
            ),
        ],
      ),
    );
  }
}

Widget getPageForCategory(Category category) {
  // Here you can determine which page to return based on the category
  // For example:
  if (category.name == 'New') {
    return New();
  } else if (category.name == 'Trending') {
    return TrendingProduct();
  } else if (category.name == 'Skin Care') {
    return SkinCare();
  } else if (category.name == 'Hair') {
    return Hair();
  } else if(category.name == 'Body Care') {
    return BodyCare();
  } else if(category.name == 'Make Up') {
    return MakeUp();
  } else if(category.name == 'Nails'){
    return Nails();
  }

  // Add similar conditions for other categories
  // You can return a default page if needed
  return Home();
}


