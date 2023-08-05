
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class AvailabilityCheckbox extends StatefulWidget {
  @override
  _AvailabilityCheckboxState createState() => _AvailabilityCheckboxState();
}

class _AvailabilityCheckboxState extends State<AvailabilityCheckbox> {
  bool? outOfStock = false;
  bool? inStock = false;

  void toggleOutOfStock(bool? value) {
    setState(() {
      outOfStock = value;
      if (outOfStock ==true) {
        inStock = false;
      }
    });
  }

  void toggleInStock(bool? value) {
    setState(() {
      inStock = value;
      if (inStock == true) {
        outOfStock = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          title: Text('Availability', style: sideheadings),
        ),
        CheckboxListTile(
          title: Text('Out of Stock'),
          value: outOfStock,
          onChanged: toggleOutOfStock,
        ),
        CheckboxListTile(
          title: Text('In Stock'),
          value: inStock,
          onChanged: toggleInStock,
        ),
        
      ],
        
      
    );
  }
}


class PriceRange extends StatefulWidget {
  const PriceRange({super.key});

  @override
  State<PriceRange> createState() => _PriceRangeState();
}

class _PriceRangeState extends State<PriceRange> {
  RangeValues _selectedRange = RangeValues(0, 100); // Default range
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text('Price', style: sideheadings),
            ),
            RangeSlider(
              values: _selectedRange,
              min: 0,
              max: 100,
              onChanged: (RangeValues values) {
                setState(() {
                  _selectedRange = values;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('${_selectedRange.start.toStringAsFixed(2)}'),
                Text('${_selectedRange.end.toStringAsFixed(2)}'),
              ],
            ),
            
          ],
        ),
      );
  }
}
  