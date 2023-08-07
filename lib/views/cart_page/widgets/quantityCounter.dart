import 'package:flutter/material.dart';

class QuantityCounter extends StatefulWidget {
  final ValueChanged<int> onChanged;
  final int initialValue;

  QuantityCounter({
    required this.onChanged,
    this.initialValue = 1,
  });

  @override
  _QuantityCounterState createState() => _QuantityCounterState();
}

class _QuantityCounterState extends State<QuantityCounter> {
  late int _quantity;

  @override
  void initState() {
    super.initState();
    _quantity = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            if (_quantity > 1) {
              setState(() {
                _quantity--;
                widget.onChanged(_quantity);
              });
            }
          },
          icon: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black
            ),
            child: Icon(Icons.remove, color: Colors.white,)
          ),
        ),
        Text(
          '$_quantity',
          style: TextStyle(fontSize: 16),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              _quantity++;
              widget.onChanged(_quantity);
            });
          },
          icon: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black
            ),
            child: Icon(Icons.add, color: Colors.white,)
          ),
        ),
      ],
    );
  }
}


