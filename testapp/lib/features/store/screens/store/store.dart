import 'package:flutter/material.dart';
import 'package:testapp/common/custom_shapes/containers/search_container.dart';
import 'package:testapp/common/widgets/appbar/appbar.dart';
import 'package:testapp/common/widgets/appbar/tabbar.dart';
import 'package:testapp/common/widgets/products/products.cart/brand_card.dart';
import 'package:testapp/common/widgets/products/products.cart/cart_menu_icon.dart';
import 'package:testapp/common/widgets/texts/section_heading.dart';
import 'package:testapp/features/authentication/controllers.onboarding/widgets/layouts/grid_layout.dart';
import 'package:testapp/features/store/widgets/category_tab.dart';
import 'package:testapp/utils/constants/colors.dart';
import 'package:testapp/utils/constants/sizes.dart';
import 'package:testapp/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [TCartCountericon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor:
                    THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                expandedHeight: 440,

                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSize.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSize.spaceBtwItems),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSize.spaceBtwInputFields),

                      TSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSize.spaceBtwItems / 1.5),

                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const TBrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('SportCars')),
                    Tab(child: Text('Cabriolets')),
                    Tab(child: Text('Trucks')),
                    Tab(child: Text('Cupe')),
                    Tab(child: Text('Elite-class')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
