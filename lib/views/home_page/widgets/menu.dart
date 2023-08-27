import 'package:flutter/material.dart';
import 'package:mpanies_app/categoryProvider.dart';
import 'package:mpanies_app/models/products.dart';
import 'package:mpanies_app/models/responsive.dart';
import 'package:mpanies_app/subCategoryProvider.dart';
import 'package:mpanies_app/utils/constants.dart';
import 'package:mpanies_app/views/bodycare_page/bodyCare.dart';
import 'package:mpanies_app/views/hair_page/hair.dart';
import 'package:mpanies_app/views/home_page/home.dart';
import 'package:mpanies_app/views/home_page/widgets/footer.dart';
import 'package:mpanies_app/views/home_page/widgets/header_container.dart';
import 'package:mpanies_app/views/home_page/widgets/newsletter.dart';
import 'package:mpanies_app/views/makeup_page/makeup.dart';
import 'package:mpanies_app/views/nails_page/nails.dart';
import 'package:mpanies_app/views/skincare_page/widgets/gridview.dart';
import 'package:mpanies_app/views/skincare_page/widgets/sidemenu.dart';
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
    return Column(
      children: [
        Container(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: productItems.length,
            itemBuilder: (context, index) {
              final category = productItems[index].category;
              final subcategories = productItems
                  .where((item) => item.category == category)
                  .map((item) => item.subCategory)
                  .toSet()
                  .toList();
              return InkWell(
                onTap: (){},
                child: ExpansionTile(
                  title: Text(category),
                  children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: subcategories.length,
                    itemBuilder: (context, subIndex) {
                      return InkWell(
                        onTap: () {
   
                        },
                        child: ListTile(
                          title: Text(subcategories[subIndex]),
                          onTap: () {
                            print('tapped');
                            // Handle subcategory selection
                            Provider.of<SubcategoryProvider>(context, listen: false)
                                .setSelectedSubcategory(subcategories[subIndex]);
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Material(
                                child: Scaffold(

                                  drawer: Drawer(
                                    child: ListView(
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
                                    children: [
                                      HeaderContainer(),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                            
                                                  if (Responsive.isDesktop(context))
                                                    Expanded(child: WebSideView()),                          
                                
                                                  Expanded(
                                                    flex: 4,
                                                    child: ResponsiveGrid()
                                                  )
                                 
                                                ],
                                              ),
                                              NewsLetter(),
                                              Footer()
                                            ],
                                          )
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                          },
                        ),
                      );
                    },
                  ),
                ],
                
                ),
              );
            },
          ),
        ),
      ],
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


