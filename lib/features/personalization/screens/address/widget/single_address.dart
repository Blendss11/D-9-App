import 'package:d9/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({
    super.key,
    required this.selectedAddress,
    
    });
    final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return  RoundedContainer(
                  padding: EdgeInsets.all(TSize.md),
                  width: double.infinity,
                  showBorder: true,
                  backgroundColor: selectedAddress ? Tcolors.primaryColor.withOpacity(0.5) : Colors.transparent,
                  borderColor: selectedAddress
                  ? Colors.transparent
                  : dark
                     ? Tcolors.grey
                     :   Colors.grey,
                  margin: EdgeInsets.only(bottom: TSize.spaceBTWItems),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 5,
                        top: 0,
                        child: Icon(
                          selectedAddress ? Iconsax.tick_circle5 : null,
                          color: selectedAddress
                          ? dark  
                            ? Tcolors.light
                            : Colors.black
                          : null,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ambatron',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(height: TSize.sm / 2),
                          Text('(+62)081 9289 2981', maxLines: 1, overflow: TextOverflow.ellipsis),
                          SizedBox(height: TSize.sm / 2),
                          Text('Tambak, Berjo, Kec. Ngargoyoso, Jawa Tengah 57793', softWrap: true,)
                        ],
                      )
                    ],
                  ),
    );
  }
}