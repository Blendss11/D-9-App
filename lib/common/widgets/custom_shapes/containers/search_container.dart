import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/device/device_utility.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBorder = true,
     this.onTap,
      this.showBackGround = true, 
      this.padding = const EdgeInsets.symmetric(horizontal: TSize.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool showBorder, showBackGround;
  final EdgeInsetsGeometry padding;



  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return Padding(
      padding: padding,
      child: Container(
        width: TDeviceUtility.getScreenWidht(context),
        padding:  EdgeInsets.all(TSize.md),
        decoration: BoxDecoration(
          color:showBackGround ? dark ? Tcolors.white : Tcolors.white :Colors.transparent,
          borderRadius: BorderRadius.circular(TSize.borderRadiusLg),
          border: showBorder ? Border.all(color: Colors.grey) : null,
        ),
        child: Row(
          children: [
             Icon(
              icon,
              color: dark? Tcolors.white: Tcolors.black,
            ),
            const SizedBox(
              width: 20.0,
            ),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
