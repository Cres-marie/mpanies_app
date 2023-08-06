import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginButton extends StatefulWidget {
  const SocialLoginButton({super.key});

  @override
  State<SocialLoginButton> createState() => _SocialLoginButtonState();
}

class _SocialLoginButtonState extends State<SocialLoginButton> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 190,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.withOpacity(0.3)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                       
                SvgPicture.asset("assets/icons/google-icon.svg",),
                SizedBox(width: 10,),
                Text('Google',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14, ))                      
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 50,
            width: 190,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.withOpacity(0.3)),
            ),
                      
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                       
                SvgPicture.asset("assets/icons/facebook-2.svg",),
                SizedBox(width: 10,),
                Text('Facebook',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14, ))                      
              ],
            ),
          ),
                    
        ],
      ),
    );
  }
}