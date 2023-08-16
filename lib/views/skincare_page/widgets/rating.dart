import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../utils/constants.dart';

class RatingStar extends StatefulWidget {
  const RatingStar({super.key});

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
                                initialRating: 4, // Set the initial rating value here
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: 10,
                                itemCount: 5,
                                //itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: kSecondaryColorPink,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              );
  }
}