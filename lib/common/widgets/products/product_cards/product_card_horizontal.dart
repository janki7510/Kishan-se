import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kishan_se/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:kishan_se/common/widgets/images/t_rounded_images.dart';
import 'package:kishan_se/common/widgets/products/product_cards/product_price_text.dart';
import 'package:kishan_se/common/widgets/products/product_cards/product_title_text.dart';
import 'package:kishan_se/common/widgets/texts/t_brand_title_text.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';
import '../../../styles/shadows.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
    //boxShadow: [TShadowStyle.verticalProductShadow],
    borderRadius: BorderRadius.circular(TSizes.productImageRadius),
    color: dark  ? TColors.darkerGrey : TColors.softGrey,
     ),
      child:  Row(
        children: [
          ///Thumbnail 
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ?  TColors.dark : TColors.white,
            child: const Stack(
              children: [
                ///Thumbnail Image
                SizedBox(
                    height: 120,
                    width: 120,
                    child: TRoundedImage(imageUrl: TImages.kidneyBeen,applyImageRadius: true,)
                ),
              ],
            ),
          ),
          
          ///Details
            SizedBox(
             width: 172,
             child: Padding(
               padding: const EdgeInsets.only(top: TSizes.sm,left: TSizes.sm),
               child: Column(
                 children: [
                   const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(title: 'Rajma Sharmili is dark red kidney beans',smallSize: true,),
                      SizedBox(height: TSizes.spaceBtwItems/2,),
                      TBrandTitleText(title: 'Rajma Sharmili',)
                    ],
                   ),
                  const Spacer(),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       ///Pricing
                       const Flexible(child: TProductPriceText(price: '89')),

                       ///Add to Cart
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
           )
        ],
      ),
    );
  }
}
