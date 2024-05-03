import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constans/image_strings.dart';

class TloginHeader extends StatelessWidget {
  const TloginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(height: 150, image: AssetImage(Timage.logodark)),
        Text(TTexts.LoginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(
          height: TSize.sm,
        ),
        Text(
          TTexts.SubloginTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
