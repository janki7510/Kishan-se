import 'package:flutter/material.dart';
import 'package:kishan_se/common/widgets/layouts/grid_layout.dart';
import 'package:kishan_se/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:kishan_se/features/shop/screens/widgets/home_appbar.dart';
import 'package:kishan_se/features/shop/screens/widgets/home_categories.dart';
import 'package:kishan_se/features/shop/screens/widgets/promo_slider.dart';
import 'package:kishan_se/utils/constants/image_strings.dart';
import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/constants/size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              // is the green area of the home
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Search Bar
                  TSearchContainer(text: 'Search'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.spaceBtwSections),
                    child: Column(
                      children: [
                        TSectionHeading(
                            title: 'Popular Agro Products..',
                            showActionButton: false,
                            textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBtwItems),

                        /// Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const  EdgeInsets.all(TSizes.defaultSpace),
              child:  Column (
                children: [
                  /// Promo Sliders
                  const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3, TImages.promoBanner4]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Heading
                  TSectionHeading(title: 'Popular products', onPressed: (){}),
                  const  SizedBox(height: TSizes.spaceBtwItems),

                  /// Popular Products
                  TGridLayout(itemCount: 9, itemBuilder: (_, index) => const TProductCardVertical()),
             ],
            )
            ),
          ],
        ),
      ),
    );
  }
}


