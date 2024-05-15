import 'package:d9/common/styles/spacing_style.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image,title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: TspacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [

            Image(image: AssetImage(Timage.VerifyIcon), width: THelperFunction.screenWidth() * 0.6,),
            const SizedBox(height: TSize.spaceBTWSection,),

            Text(TTexts.SuccessTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSize.spaceBTWItems,),
            
             Text(TTexts.SuccessTitlesub, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
             const SizedBox(height: TSize.spaceBTWItems,),

             SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: const Text(TTexts.Continue)),)

            
          ],
        ),

        
        ),
      ),
    );
  }
}