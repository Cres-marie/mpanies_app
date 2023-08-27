import 'package:flutter/material.dart';
import 'package:mpanies_app/categoryProvider.dart';
import 'package:mpanies_app/models/products.dart';
import 'package:mpanies_app/models/responsive.dart';
import 'package:mpanies_app/utils/constants.dart';
import 'package:mpanies_app/views/bodycare_page/bodyCare.dart';
import 'package:mpanies_app/views/hair_page/hair.dart';
import 'package:mpanies_app/views/home_page/home.dart';
import 'package:mpanies_app/views/home_page/widgets/header.dart';
import 'package:mpanies_app/views/home_page/widgets/menu.dart';
import 'package:mpanies_app/views/makeup_page/makeup.dart';
import 'package:mpanies_app/views/nails_page/nails.dart';
import 'package:mpanies_app/views/new_page/new.dart';
import 'package:mpanies_app/views/skincare_page/skincare.dart';
import 'package:mpanies_app/views/trending_page/trending.dart';
import 'package:mpanies_app/widgets/hoverWidget.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TopBar extends StatefulWidget {
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  int _selectedIndex = -1;
  bool _showBodyContent = false;

  

  @override
  void initState() {
    super.initState();
    _loadSelectedIndex();
  }

  Future<void> _loadSelectedIndex() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int storedIndex = prefs.getInt('selectedIndex') ?? -1;

    setState(() {
      _selectedIndex = storedIndex;
    });
  }

  void _updateSelectedIndex(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('selectedIndex', index);
    setState(() {
      _selectedIndex = index;
      _showBodyContent = true;

    });
  }

  List<Widget> _categoryWidgets = [
    
    New(),
    TrendingProduct(),
    SkinCare(),
    Hair(),
    BodyCare(),
    MakeUp(),
    Nails(),
    
    
  ];


  @override
  Widget build(BuildContext context) {

    
    return Column(
          children: [
            Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var index = 0; index < _categoryWidgets.length; index++)
                  Container(
                    margin: EdgeInsets.all(15),
                    child: HoverText(
                      text: productItems[index].category,
                      onPressed: () {
                        Provider.of<CategoryProvider>(context, listen: false)
                      .setSelectedCategory(productItems[index].category);
                        _updateSelectedIndex(index);
                        
                      },
                      size: 18,
                    ),
                  ),
                    
                ],
              ),
            ),
    
              if (_showBodyContent)
              Expanded(
                child: SingleChildScrollView(
                  child: IndexedStack(
                    index: _selectedIndex,
                    children: _categoryWidgets,
                  ),
                ),
              ),
            
            
          ],
        
      
    );
  }
}

