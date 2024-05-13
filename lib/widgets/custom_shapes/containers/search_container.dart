// import 'package:flutter/material.dart';
// class TSearchContainer extends StatelessWidget {
//   const TSearchContainer({
//     super.key, required this.text, this.icon, required this.showBackground = true, required this.showBorder = true,
//   });

//   final String text;
//   final IconData? icon;
//   final bool showBackground, showBorder;

//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunction.isDarkMode(context),
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
//       child: Container(
//         width: TDeviceUtility.getScreenWidht(context),
//         padding: EdgeInsets.all(TSizes.md),
//         decoration: BoxDecoration(
//           color: showBackground ? dark ? Tcolors.dark : Tcolors.light : Colors.transparent,
//           borderRadius: BorderRadius.circular(Tsizes.cardRadiusLg),
//           border: showBorder ? Border.all(color: TColors.grey) : null,
//         ),
//         child: Row(
//           children: [
//             Icon(
//               Iconsax.search_normal,
//               color: Tcolors.darkergrey,
//             ),
//             const SizedBox(
//               width: TSizes.spaceBtwItems,
//             ),
//             Text('Search',
//                 style: Theme.of(context).textTheme.bodySmall),
//           ],
//         ),
//       ),
//     );
//   }
// }