import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:d9/common/widgets/gridlayout/grid_layout.dart';
import 'package:d9/common/widgets/producs.cart/products_menu_cart.dart';
import 'package:d9/common/widgets/products_card/brand_card.dart';
import 'package:d9/common/widgets/textx/section_heading.dart';
import 'package:d9/features/shop/screens/home/widgets/tab_category.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          extendBody: true,
          appBar: TAppaBar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            action: [
              TcartCounter(
                onPressed: () {},
                iconColor: Colors.black,
              )
            ],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunction.isDarkMode(context)
                      ? Tcolors.black
                      : Tcolors.secondary,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(TSize.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: TSize.spaceBTWItems,
                        ),
                        const SearchContainer(
                          text: 'Search In Store',
                          showBorder: true,
                          showBackGround: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: TSize.spaceBTWSection,
                        ),

                        //featured brands
                        TsectionHedding(
                          title: 'Featured Brands',
                          showActionButton: true,
                          onPressed: () {},
                        ),
                       const SizedBox(
                          height: TSize.spaceBTWItems / 1.5,
                        ),

                        TgridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return BrandCard(showBorder: false);
                            }),
                      ],
                    ),
                  ),
                  bottom: TabBar(tabs: [
                    Tab(
                        child: Text(
                      'Singkong',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
                    Tab(
                        child: Text(
                      'Minuman',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
                    Tab(
                        child: Text(
                      'Snack',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
                    Tab(
                        child: Text(
                      'Makanan',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
                  ]),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                TcategoryTab(),
                TcategoryTab(),
                TcategoryTab(),
                TcategoryTab(),
                TcategoryTab(),
              ],
            ),
          ),
        )
        );
  }
}
