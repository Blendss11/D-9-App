import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/curvededge/curved_edge_widget.dart';
import 'package:d9/common/widgets/icons/circular_icon.dart';
import 'package:d9/common/widgets/image/rounded_image.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Timageslider extends StatelessWidget {
  const Timageslider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return TcurvedEdgeWidget(
      child: Container(
        color: dark ? Tcolors.black : Tcolors.white,
        child: Stack(
          children: [
          const  SizedBox(
              height: 400,
              
              
                child: Center(child: Image(image: AssetImage(Timage.productImage))),
              
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: TSize.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(width: TSize.spaceBTWItems),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => RoundedImage(
                    width: 80,
                    backgroundColor: dark ? Tcolors.black : Tcolors.white,
                    border: Border.all(color: Tcolors.white),
                    padding: EdgeInsets.all(TSize.sm),
                    imageUrl: Timage.teh,
                  ),
                ),
              ),
            ),
    
            TAppaBar(
              showBackArrow: true,
              action: [
                CircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
