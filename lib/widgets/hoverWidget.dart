import 'package:flutter/material.dart';
import 'package:mpanies_app/utils/constants.dart';

class HoverIcon extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onPressed;
  final double size;

  HoverIcon({required this.iconData, required this.onPressed, required this.size});

  @override
  State<HoverIcon> createState() => _HoverIconState();
}

class _HoverIconState extends State<HoverIcon> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: InkWell(
        onTap: widget.onPressed,
        child: Icon(
          widget.iconData,
          color: _isHovered ? kSecondaryColorPink : Colors.black,
          size: _isHovered? 40.0 :  32.0
        )
      ),
    );

  }
}


class HoverText extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final double size;

  HoverText({required this.text, required this.onPressed, required this.size});

  @override
  State<HoverText> createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: InkWell(
        onTap: widget.onPressed,
        child: Text(
          widget.text,
          style: TextStyle(
            color: _isHovered ? k2SecondaryGold : Colors.white,
            fontSize: _isHovered ? 18.0 : 18.0,
            fontWeight: _isHovered ? FontWeight.bold : FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
