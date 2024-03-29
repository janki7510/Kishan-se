import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kishan_se/common/widgets/appbar/appbar.dart';
import 'package:kishan_se/common/widgets/appbar/tabbar.dart';
import 'package:kishan_se/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:kishan_se/common/widgets/texts/section_heading.dart';
import 'package:kishan_se/features/shop/screens/store/widgets/category_tab.dart';
import 'package:kishan_se/utils/constants/size.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: Colors.grey,
            ),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,

                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// Search Bar
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const TSearchContainer(
                            text: 'Search in store',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        /// Featured Agro Products
                        TSectionHeading(
                            title: 'Featured Agro Products', onPressed: () {}),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                      ],
                    ),
                  ),

                  /// Tabs
                  bottom: const TTabBar(
                      tabs: [
                  Tab(child: Text('Pulses')),
                  Tab(child: Text('Cereals')),
                  Tab(child: Text('Vegetables')),
                  Tab(child: Text('Fruits')),
                   Tab(child: Text('Pickles')),
              ],
                  ),
                ),
              ];
            },

            /// Body
            body: const TabBarView(
              children: [
                TCategoryTab(),
                 TCategoryTab(),
                  TCategoryTab(),
                  TCategoryTab(),
                  TCategoryTab()

    ],
    ),
      ),
      ),
    );
  }
}
