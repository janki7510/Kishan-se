import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kishan_se/features/shop/screens/widgets/promo_slider.dart';
import 'package:kishan_se/utils/device/device_utility.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custome_Shapes/containers/circular_container.dart';
import '../../../../common/widgets/custome_Shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custome_Shapes/containers/search_container.dart';
import '../../../../common/widgets/custome_Shapes/curved_edges/curved_edges.dart';
import '../../../../common/widgets/custome_Shapes/curved_edges/curved_edges_widget.dart';
import '../../../../common/widgets/image/t_rounded_image.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_strings.dart';
import 'package:kishan_se/features/authentication/screens/login/login.dart';
import 'home_appbar.dart';
import 'home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            ///Header
            TPrimaryHeaderContainer(
              child: Column(
                children:  [
                  ///AppBar
                  const THomeAppBar(),
                  const SizedBox(height: TSize.spaceBtwSections,),

                  ///SearchBar
                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSize.spaceBtwSections,),

                  ///Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSize.spaceBtwSections),
                    child: Column(
                      children: const [

                        ///Heading
                        TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white,),
                        SizedBox(height: TSize.spaceBtwItems,),

                        ///Categories
                        THomeCategories(),
                      ],
                    ),
                  )
              ],
              ),

            ),
            ///Body
             Padding(
              padding: EdgeInsets.all(TSize.defaultSpace),

              child: Column(
                 children: const [
                 /// Promo Slider
                   TPromoSlider(banner: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3],),
                   SizedBox(height: TSize.spaceBtwSections,),
                 ///Popular Products
                   TProductCardVertical(),
                 ],
               ),
            ),
          ],
        ),
      ),
    );
  }
}








