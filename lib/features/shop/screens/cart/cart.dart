import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/producs.cart/cart_item.dart';
import 'package:d9/common/widgets/producs.cart/cart_quantity.dart';
import 'package:d9/common/widgets/textx/produk_price.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppaBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (_, __) =>
                  SizedBox(height: TSize.spaceBTWSection),
              itemCount: 10,
              itemBuilder: (_, index) => Column(
                    children: [
                      TcartItem(),
                      SizedBox(height: TSize.spaceBTWItems),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 70),

                              TprodukQuantity(),
                            ],
                          ),
                          
                          TprodukPrice(price: '20000')
                        ],
                      )
                    ],
                  )),
        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: Text('Checkout')),
      ),
    );
  }
}


