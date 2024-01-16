import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kishan_se/common/widgets/image/t_rounded_image.dart';
import 'package:kishan_se/common/widgets/products/product_cards/product_price_text.dart';
import 'package:kishan_se/common/widgets/texts/product_title_text.dart';
import 'package:kishan_se/utils/constants/colors.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';
import '../../../styles/shadows.dart';
import '../../custome_Shapes/containers/rounded_container.dart';
import '../../icons/t_circular_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({Key? key}) : super(key: key);

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
          borderRadius: BorderRadius.circular(TSize.productImageRadius),
          color: dark  ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            ///Thumbnail, Wishlist button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSize.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children:  const [
                  ///Thumbnail Image
                  TRoundedImage(imageUrl: TImages.grain, applyImageRadius: true,),

                  ///Favourite Icon Button
                  Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)),
                ],
              ),
            ),

            const SizedBox(height: TSize.spaceBtwItems/2,),
            /// Details
            Padding(
              padding: const EdgeInsets.only(left: TSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                const TProductTitleText(title: 'Wheat Sihor/Gahu Sihor',smallSize: true,),
                  const SizedBox(height: TSize.spaceBtwItems/2,),
                 Row(
                   children: [
                     Text('Grain', overflow: TextOverflow.ellipsis,maxLines: 1, style: Theme.of(context).textTheme.labelMedium,)
                   ],
                 ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Price
                      const TProductPriceText(price: '150',),

                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSize.cardRadiusMd),
                            bottomRight: Radius.circular(TSize.productImageRadius)
                          ),
                        ),
                        child: const SizedBox(
                            width: TSize.iconLg*1.2,
                            height: TSize.iconLg*1.2,
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




