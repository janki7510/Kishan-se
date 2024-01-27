import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kishan_se/common/widgets/products/product_cards/product_price_text.dart';
import 'package:kishan_se/utils/constants/colors.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../images/t_rounded_images.dart';
import '../../texts/product_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark  ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            ///Thumbnail, Wishlist button, Discount Tag
            TRoundedContainer(
              height: 160,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: const Stack(
                children:  [
                  ///Thumbnail Image
                  TRoundedImage(imageUrl: TImages.wheat, applyImageRadius: true),
                  //TRoundedImage(imageUrl: TImages.coriander, applyImageRadius: true),
                  //TRoundedImage(imageUrl: TImages.jute, applyImageRadius: true),
                  //TRoundedImage(imageUrl: TImages.turmeric, applyImageRadius: true),
                  //TRoundedImage(imageUrl: TImages.potato, applyImageRadius: true),

                  ///Favourite Icon Button
                  /*  Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)),*/
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems/2,),
            /// Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const TProductTitleText(title: 'Wheat Sihor/Gahu Sihor',smallSize: true,),
                  const SizedBox(height: TSizes.spaceBtwItems/2,),
                  Row(
                    children: [
                      Text('Grain', overflow: TextOverflow.ellipsis,maxLines: 1, style: Theme.of(context).textTheme.labelMedium,)
                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Price
                      const TProductPriceText(price: '24/kg',),

                      ///Add to Cart Button
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight: Radius.circular(TSizes.productImageRadius)
                          ),
                        ),
                        child: const SizedBox(
                            width: TSizes.iconLg*1.2,
                            height: TSizes.iconLg*1.2,
                            child: Center(child: Icon(Iconsax.add,color: TColors.white,))),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



