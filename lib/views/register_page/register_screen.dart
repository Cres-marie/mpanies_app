import 'package:flutter/material.dart';
import 'package:mpanies_app/utils/constants.dart';
import 'package:mpanies_app/views/home_page/home.dart';
import 'package:mpanies_app/views/register_page/widgets/register_field.dart';

import '../../widgets/hoverWidget.dart';
import '../login_page/login_screen.dart';
import '../login_page/widgets/login_field.dart';
import '../login_page/widgets/social_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        leadingWidth: 200,
        backgroundColor: Colors.white,
        leading: Container(
          height: 150,
          width: 180,
          child: Transform.scale(
            scale: 1.2,
            child: Image.asset('assets/images/mpanies.png',))
        ),
      ),

      body: Container(
        padding: EdgeInsets.only(top: 30, ),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 500,),
              color: Colors.white,
              padding: EdgeInsets.only(bottom: 30, ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image.asset('assets/images/signin_balls.png', width: 260, color: k2SecondaryGold ),
                  //Image.asset('assets/images/mpanies.png', width: 150, ),              
                  Container(
                    padding: EdgeInsets.only(left:40),
                    child: ListTile(
                      title: Text('Sign Up with', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 18, )),
                    ),
                  ),                            
                  SizedBox(height: 30),
                  
                  SocialLoginButton(),
                  SizedBox(height: 20),
                  Divider(indent: 55, endIndent: 55,),
                  Container(
                    padding: EdgeInsets.only(left:40),
                    child: ListTile(
                      title: Text('or, create an email account', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16, )),
                    ),
                  ),             
                  SizedBox(height: 15),
                  RegisterField(),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 400,
                    child: ElevatedHoverButton(
                        text: 'Sign Up',
                        defaultColor: Colors.black,
                        hoverColor: k2SecondaryGold,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          ); // Navigate back to the previous page
                        },
                        //icon: Icons.lock,
                      ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an Account?', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14, )),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                        }, 
                        child: Text('Sign In', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, color: Colors.blue )),
                      )
                    ],
                  ),
                                                   
                              
            ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}