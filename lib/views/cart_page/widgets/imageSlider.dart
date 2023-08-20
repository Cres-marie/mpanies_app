import 'package:flutter/material.dart';

import '../../../models/responsive.dart';

class ImageSlider extends StatefulWidget {

  final List<String> images;
  ImageSlider({required this.images});
      
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _selectedIndex = 0;

  void _selectImage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    //bool isDesktop = Responsive.isDesktop(context);
    double imageWidth = MediaQuery.of(context).size.width - 75;
    return 
      SizedBox(
        child: (Responsive.isDesktop(context))
         ? Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: List.generate(
                widget.images.length,
                (index) => _GalleryImageItem(
                  image: widget.images[index],
                  isSelected: index == _selectedIndex,
                  onPressed: () {
                    _selectImage(index);
                  },
                )
              )
            ),
            SizedBox(
              width: imageWidth < 723 ? imageWidth : 400,
              height: 453,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  widget.images[_selectedIndex], fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        )
                : Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              widget.images.length,
                              (index) => _GalleryImageItem(
                                    image: widget.images[index],
                                    isSelected: index == _selectedIndex,
                                    onPressed: () {
                                      _selectImage(index);
                                    },
                                  ))),
                      SizedBox(
                        width: imageWidth < 723 ? imageWidth : 723,
                        height: 353,
                        child: Image.network(
                          widget.images[_selectedIndex],
                        ),
                      ),
                    ].reversed.toList(),
                  )
                  
      );          
  }
}

class _GalleryImageItem extends StatelessWidget {

  final String image;
  final bool isSelected;
  final VoidCallback onPressed;
  
  _GalleryImageItem({required this.image, required this.isSelected, required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          //margin: EdgeInsets.only(left: 80, top: 30),
          padding: EdgeInsets.all(2), // Add padding around the image
          decoration: BoxDecoration(
              border: isSelected
                  ? Border.all(color: Colors.grey, width: 2)
                  : null
          ),
          width: 110,
          height: 95,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
