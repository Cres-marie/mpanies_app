import 'package:flutter/material.dart';
import 'package:mpanies_app/categoryProvider.dart';
import 'package:mpanies_app/models/products.dart';
import 'package:mpanies_app/views/bodycare_page/bodyCare.dart';
import 'package:mpanies_app/views/hair_page/hair.dart';
import 'package:mpanies_app/views/home_page/home.dart';
import 'package:mpanies_app/views/makeup_page/makeup.dart';
import 'package:mpanies_app/views/nails_page/nails.dart';
import 'package:mpanies_app/views/trending_page/trending.dart';
import 'package:mpanies_app/widgets/hoverWidget.dart';
import 'package:provider/provider.dart';
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
        itemCount: productItems.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){},
            child: ExpansionTile(
              title: Text(productItems[index].category),
            
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
          
          for (ProductItem category in productItems)
            HoverText(
              text:category.category,
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => getPageForCategory(category)),
                );
                Provider.of<CategoryProvider>(context, listen: false)
                    .setSelectedCategory(category.category);
              },
              size: 18.0,
            ),
        ],
      ),
    );
  }
}

Widget getPageForCategory(ProductItem category) {
  // Here you can determine which page to return based on the category
  // For example:
  if (category.category== 'New') {
    return New();
  } else if (category.category == 'Trending') {
    return TrendingProduct();
  } else if (category.category == 'Skin Care') {
    return SkinCare();
  } else if (category.category == 'Hair') {
    return Hair();
  } else if(category.category == 'Body Care') {
    return BodyCare();
  } else if(category.category == 'Make Up') {
    return MakeUp();
  } else if(category.category == 'Nails'){
    return Nails();
  } 

  // Add similar conditions for other categories
  // You can return a default page if needed
  return Home();
}


