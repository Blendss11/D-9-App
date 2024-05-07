import 'package:d9/utils/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class TratingBar extends StatelessWidget {
  const TratingBar({
    super.key, required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: Tcolors.grey,
      itemBuilder: (_, __)=> Icon(Iconsax.star1, color: Tcolors.primaryColor,));
  }
}