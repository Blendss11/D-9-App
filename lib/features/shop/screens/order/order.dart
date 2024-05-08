import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/features/shop/screens/order/widget/order_list_item.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppaBar(title: Text('My Order', style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true),
      body: Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        
        child: TOrderListItems(),
        ),
    );
  }
}