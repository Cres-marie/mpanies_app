import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class CustomHeader extends StatefulWidget {
  final String headerText;
  final String buttonText;
  final VoidCallback onTap;
  final VoidCallback? onCancel;
  final Color buttonColor;
  final Color hoverColor;
  final IconData? iconData;

  const CustomHeader({
    required this.headerText,
    required this.buttonText,
    required this.onTap,
    this.onCancel,
    required this.buttonColor,
    required this.hoverColor,
    this.iconData,
  });

  @override
  _CustomHeaderState createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  Color buttonColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.headerText,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10,),
        Container(
          child: Row(
            children: [
              if (widget.onCancel != null)
                Container(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: widget.onCancel,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      foregroundColor: Colors.transparent,
                    ),
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              SizedBox(width: 10),
              MouseRegion(
                onEnter: (_) {
                  setState(() {
                    buttonColor = widget.hoverColor;
                  });
                },
                onExit: (_) {
                  setState(() {
                    buttonColor = widget.buttonColor;
                  });
                },
                child: Container(
                  height: 40,
                  
                  child: ElevatedButton(
                    onPressed: widget.onTap,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.iconData != null)
                          Icon(widget.iconData, color: Colors.white),
                        SizedBox(width: widget.iconData != null ? 5 : 0),
                        Text(
                          widget.buttonText,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class OrdersHeader extends StatelessWidget {
  const OrdersHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      headerText: 'Your Shopping Bag',
      buttonText: 'Continue Shopping',
      onTap: () {
        // Your onTap callback logic here
        Navigator.pop(context);
      },
      buttonColor: buttonColor,
      hoverColor: k2SecondaryGold,
      iconData: Icons.shopping_basket, // Add the icon you want to use
    );
  }
}


