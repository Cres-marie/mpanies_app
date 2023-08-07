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
        child: Stack(
          children: [
            Icon(
            widget.iconData,
            color: _isHovered ? kSecondaryColorPink : Colors.black,
            size: _isHovered? 40.0 :  32.0
            ),
            if (_isHovered)
              Positioned(
                top: widget.size + 10,
                left: 0,
                child: PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'item1',
                        child: Text('Item 1'),
                      ),
                      PopupMenuItem<String>(
                        value: 'item2',
                        child: Text('Item 2'),
                      ),
                      // Add more items as needed
                    ];
                  },
                )
              )

          ]
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
