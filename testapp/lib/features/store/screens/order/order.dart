import 'package:flutter/material.dart';
import 'package:testapp/common/widgets/appbar/appbar.dart';
import 'package:testapp/features/store/screens/order/widgets/order_list.dart';
import 'package:testapp/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),

        child: TOrderListItems(),
      ),
    );
  }
}
