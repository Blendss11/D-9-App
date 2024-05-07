import 'package:d9/features/shop/screens/product_details/widget/progress_rating.dart';
import 'package:flutter/material.dart';

class ToverralProdukRating extends StatelessWidget {
  const ToverralProdukRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text(
              '4.8',
              style: Theme.of(context).textTheme.displayLarge,
            )),
      const  Expanded(
            flex: 7,
            child: Column(
              children: [
                TratingProgress(text: '5', value: 1.0,),
                TratingProgress(text: '4', value: 0.8,),
                TratingProgress(text: '3', value: 0.6,),
                TratingProgress(text: '2', value: 0.4,),
                TratingProgress(text: '1', value: 0.1,),
              ],
            ))
      ],
    );
  }
}

