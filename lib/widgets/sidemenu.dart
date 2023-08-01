import 'package:flutter/material.dart';

class WebSideView extends StatefulWidget {
  const WebSideView({super.key});

  @override
  State<WebSideView> createState() => _WebSideViewState();
}

class _WebSideViewState extends State<WebSideView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('yes')
              //MoreOptionsList(currentUser: currentUser),
            ),
          ),
        ),
        const Spacer(),
        Container(
          width: 600.0,
          
        ),
        
      ],
    );
  }
}