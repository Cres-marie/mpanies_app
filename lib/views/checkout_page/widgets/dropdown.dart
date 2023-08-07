import 'package:flutter/material.dart';

class MonthDropdownField extends StatefulWidget {
  final List<String> months;
  final String? selectedMonth;
  final void Function(String?) onChanged;
  final String labelText;

  const MonthDropdownField({
    required this.months,
    required this.selectedMonth,
    required this.onChanged,
    required this.labelText,

  });

  @override
  _MonthDropdownFieldState createState() => _MonthDropdownFieldState();
}

class _MonthDropdownFieldState extends State<MonthDropdownField> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: widget.selectedMonth,
      onChanged: widget.onChanged,
      items: widget.months.map<DropdownMenuItem<String>>((String month) {
        return DropdownMenuItem<String>(
          value: month,
          child: Text(month),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}


