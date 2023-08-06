import 'package:flutter/material.dart';
import 'package:mpanies_app/widgets/hoverWidget.dart';
import '../../login_page/login_screen.dart';

class PersonIcon extends StatefulWidget {
  const PersonIcon({super.key});

  @override
  State<PersonIcon> createState() => _PersonIconState();
}

class _PersonIconState extends State<PersonIcon> {

  @override
  Widget build(BuildContext context) {
    return HoverIcon(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
        //WebLoginForm();
      }, 
      iconData: Icons.person,
      size: 40.0,
    );
  }
}