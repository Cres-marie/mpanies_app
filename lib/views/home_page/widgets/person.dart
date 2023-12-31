import 'package:flutter/material.dart';
import 'package:mpanies_app/utils/constants.dart';
import 'package:mpanies_app/views/register_page/register_screen.dart';
import 'package:mpanies_app/widgets/hoverWidget.dart';
import '../../login_page/login_screen.dart';
import '../../orders_page/ordersScreen.dart';

class PersonIcon extends StatefulWidget {
  const PersonIcon({super.key});

  @override
  State<PersonIcon> createState() => _PersonIconState();
}

class _PersonIconState extends State<PersonIcon> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showMenu(
            context: context,
            position: RelativeRect.fromLTRB(10, 60, 0, 0),
            items: [
              PopupMenuItem(
                value: 'Sign in',
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0, right:10,left:10,),
                  child: Container(
                    height: 40,
                    width: 400,
                    child: ElevatedHoverButton(
                        text: 'Sign In',
                        
                        onTap: () {
                          Navigator.of(context).pushNamed('/login');
                          
                        },
                        //icon: Icons.lock,
                      ),
                  ),
                ),
              ),
              
              
              PopupMenuItem(
                value: '',
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('New to Mpanies?', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 12, )),
                      TextButton(
                        onPressed: (){
                           Navigator.pushNamed(context, '/register');
                          
                        }, 
                        child: Text('Sign Up', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, color: Colors.blue )),
                      )
                    ],
                  ),                 
                  ),
                ),
              
    
              PopupMenuItem(
                value: 'orders',
                child: Padding(
                  padding: EdgeInsets.all(10),
                  
                    child: Text('Your Orders', style: TextStyle(color: Colors.black))
                  
                ),
              )
            ]
          ).then((value) {
            if (value == 'orders') {
               Navigator.pushNamed(context, '/orders');
              
            }

            setState(() {
              isClicked = false; // Reset the color after the menu is closed
            });
          });

          setState(() {
          isClicked = true; // Set the color when the icon is clicked
        });
      },
      child: Icon(Icons.person, size: 30, color: isClicked ? k2SecondaryGold : buttonColor,)
                  
    );
        
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => LoginScreen()),
        // );
        //WebLoginForm();
      
      
    
  }
}