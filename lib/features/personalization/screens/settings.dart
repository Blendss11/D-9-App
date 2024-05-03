// import 'package:flutter/material.dart';

// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ///-- Header
//             TPirmaryHeaderContainer(
//               child: Column(
//                 children: [
//                   TAppBar(title: Text('Account'), style: Theme.of(context).textTheme.headlineMedium.apply(color: TColor.white)),
//                   const SizedBox(height: TSizes.spaceBtwSetion,),

//                   ListTile(
//                     leading: TCircularImage(
//                       image: TImages.user,
//                       width: 50,
//                       height: 50,
//                       Padding: 0,
//                     ),
//                     title: Text('Ambatron', style: Theme.of(context).textTheme.headlineSmall.apply(color: Tcolors.white)),
//                     subtittle: Text('ambatron@gmail.com', style: Theme.of(context).textTheme.headlineMedium.apply(color: Tcolors.white)),
//                     trailing: IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit, color: TColors.white))
//                   )
//                 ],
//               ),
//             ),
//             ///-- Body
//           ],
//         ),
//       ),
//     );
//   }
// }