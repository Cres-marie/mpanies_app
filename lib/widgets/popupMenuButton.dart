import 'package:flutter/material.dart';

class PopupMenu extends StatefulWidget {
  final List<PopupMenuItem<dynamic>> items;
  final Widget child;
  PopupMenu({required this.items, required this.child});

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return widget.items;
      },
      child: widget.child,
    );

  }
}