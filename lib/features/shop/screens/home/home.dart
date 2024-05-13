import 'package:d9/common/widgets/custom_shapes/containers/primary_header.dart';
import 'package:d9/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:d9/common/widgets/gridlayout/grid_layout.dart';
import 'package:d9/common/widgets/producs.cart/home_category.dart';
import 'package:d9/common/widgets/products_card/products_card_vertical.dart';
import 'package:d9/common/widgets/textx/section_heading.dart';
import 'package:d9/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:d9/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TprimaryHeader(
              child: Column(
                children: [
                  //circular
                  ThomeAppBar(),
                  SizedBox(
                    height: TSize.spaceBTWSection,
                  ),
                  //search
                  SearchContainer(text: 'Search in Store'),
                  SizedBox(
                    height: TSize.spaceBTWSection,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: TSize.defaultSpace),
                    child: Column(
                      children: [
                        TsectionHedding(
                          title: 'Popular Category',
                          showActionButton: false,
                          textColor: Tcolors.white,
                        ),
                        SizedBox(
                          height: TSize.spaceBTWItems,
                        ),
                        ThomeCategory()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  const TpromoSlider(
                      banner: [Timage.banner, Timage.banner1, Timage.banner3]),
                  const SizedBox(height: TSize.spaceBTWSection),
                  TsectionHedding(title: 'Popular Category', onPressed: () {}),
                  const SizedBox(height: TSize.spaceBTWItems),
                  TgridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TprodukVerticalCard())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
