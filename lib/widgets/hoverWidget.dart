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
          color: _isHovered ? k2SecondaryGold : Colors.white,
          size: _isHovered ? 20.0 : 20.0,
        ),
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
            fontSize: _isHovered ? 16.0 : 16.0,
            fontWeight: _isHovered ? FontWeight.bold : FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


class HoverSocialIconButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double size;
  final Color color;
  final Color hoverColor;

  HoverSocialIconButton({
    required this.icon,
    required this.onPressed,
    required this.size,
    required this.color,
    required this.hoverColor,
  });

  @override
  State<HoverSocialIconButton> createState() => _HoverSocialIconButtonState();
}

class _HoverSocialIconButtonState extends State<HoverSocialIconButton> {
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
      child: IconButton(
        icon: Icon(widget.icon),
        onPressed: widget.onPressed,
        iconSize: widget.size,
        color: _isHovered ? widget.hoverColor : widget.color,
      ),
    );
  }
}


class ElevatedHoverButton extends StatefulWidget {
  final String? text;
  final Color defaultColor;
  final Color hoverColor;
  final VoidCallback? onTap;
  final IconData? icon;

  const ElevatedHoverButton({
    Key? key,
    this.text,
    required this.defaultColor,
    required this.hoverColor,
    this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  _ElevatedHoverButtonState createState() => _ElevatedHoverButtonState();
}

class _ElevatedHoverButtonState extends State<ElevatedHoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isHovered ? widget.hoverColor : widget.defaultColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (widget.icon != null) ...[
                Center(child: Icon(widget.icon, color: Colors.white)),
                SizedBox(width: 8),
              ],
              if (widget.text != null) ...[
                Text(
                  widget.text!,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

