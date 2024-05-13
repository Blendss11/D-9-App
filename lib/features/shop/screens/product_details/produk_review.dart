import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/products_card/rating/rating_bar.dart';
import 'package:d9/features/shop/screens/product_details/widget/overall_progress_rating.dart';
import 'package:d9/features/shop/screens/product_details/widget/progress_rating.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/device/device_utility.dart';
import 'package:d9/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class RatingReview extends StatelessWidget {
  const RatingReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppaBar(
        title: Text('Review & Rating'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const  Text(
                  'Rating and review are verified and are from people who use the same type of device that you use'),
             const SizedBox(
                height: TSize.spaceBTWItems,
              ),
           const   ToverralProdukRating(),
              const TratingBar(rating: 3.5,),
              Text('200', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSize.spaceBTWSection,)
            ],
          ),
        ),
      ),
    );
  }
}



