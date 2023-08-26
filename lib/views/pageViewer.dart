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
  int _selectedIndex = 0;

  

  @override
  void initState() {
    super.initState();
    _loadSelectedIndex();
  }

  Future<void> _loadSelectedIndex() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int storedIndex = prefs.getInt('selectedIndex') ?? 0;

    setState(() {
      _selectedIndex = storedIndex;
    });
  }

  void _updateSelectedIndex(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('selectedIndex', index);
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _categoryWidgets = [
    Home(),
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

    
    return Scaffold(
      appBar: null,
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
            Expanded(child: MobNavMenu())
          ],
        ),
      ),

      body: Column(
        children: [
          Header(),
          if (Responsive.isDesktop(context)) 
          Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var index = 0; index < _categoryWidgets.length- 1; index++)
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

          
            Expanded(
              child: SingleChildScrollView(
                child: IndexedStack(
                  index: _selectedIndex,
                  children: _categoryWidgets,
                ),
              ),
            ),
          
          
        ],
      ),
    );
  }
}

class YourNewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Your page content goes here
      child: Center(
        child: Text('Your New Page'),
      ),
    );
  }
}

