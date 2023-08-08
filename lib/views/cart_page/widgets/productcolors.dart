import 'package:flutter/material.dart';

class ProductColorModel {
  final String title;
  final Color color;

  ProductColorModel(this.title, this.color);
}


class ProductColors extends StatefulWidget {

  final List<ProductColorModel> productColors;
  final int selectedIndex;
  final Function(int index) onChange;
  
  const ProductColors({required this.productColors,required this.onChange,required this.selectedIndex});

  @override
  State<ProductColors> createState() => _ProductColorsState();
}

class _ProductColorsState extends State<ProductColors> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
                widget.productColors.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: _ColorItem(
                          onPressed: () {
                            widget.onChange(index);
                          },
                          color: widget.productColors[index].color,
                          isSelected: widget.selectedIndex == index),
                    ))
        ),
        const SizedBox(height: 8,),
        Text(widget.productColors[widget.selectedIndex].title,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: "Roboto",
              color: Colors.black,
            )
        ),
      ],
    );
  }
}


class _ColorItem extends StatelessWidget {

  final Color color;
  final bool isSelected;
  final VoidCallback onPressed;
  const _ColorItem({required this.color, required this.isSelected, required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: 27,
        height: 27,
        decoration: BoxDecoration(
            border: isSelected ? Border.all(color: Colors.grey) : null,
            borderRadius: BorderRadius.circular(19)),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: color,
              borderRadius: BorderRadius.circular(19)),
          width: 19,
          height: 19,
        ),
      ),
    );
  }
}
