import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mpanies_app/views/login_page/widgets/gradient_button.dart';
import 'package:mpanies_app/views/login_page/widgets/login_field.dart';
import 'package:mpanies_app/views/login_page/widgets/social_button.dart';

import '../home_page/widgets/footer.dart';
import '../register_page/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 30),
            constraints: const BoxConstraints(maxWidth: 500,),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/signin_balls.png', width: 260, ),
                //Image.asset('assets/images/mpanies.png', width: 150, ),              
                Container(
                  padding: EdgeInsets.only(left:40),
                  child: ListTile(
                    title: Text('Sign in', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 18, )),
                  ),
                ),               
                SizedBox(height: 30),
                SocialLoginButton(),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left:40),
                  child: ListTile(
                    title: Text('or, continue with', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 16, )),
                  ),
                ),             
                SizedBox(height: 15),
                LoginField(),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Set background color to black
                        //color: Colors.white, // Set text color to white
                      elevation: 4, // Set the elevation shadow
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Set border radius
                    ),                      
                    child: Text('Sign In ',style: TextStyle(fontSize: 16),),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('New to Mpanies?', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14, )),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterScreen()),
                      );
                      }, 
                      child: Text('Sign Up', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, color: Colors.blue )),
                    )
                  ],
                ),                 
                            
          ],
            ),
          ),
        ),
      ),
    );
  }
}
