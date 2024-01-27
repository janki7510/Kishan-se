import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kishan_se/common/widgets/appbar/appbar.dart';
import 'package:kishan_se/common/widgets/images/t_rounded_images.dart';
import 'package:kishan_se/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:kishan_se/common/widgets/texts/section_heading.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Pulses'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Banner
              const TRoundedImage(width: double.infinity, imageUrl: TImages.promoBanner2,applyImageRadius: true,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Sub-Categories
              Column(
                children: [
                  ///Heading
                  TSectionHeading(title: 'Beans', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems/2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context,index) => const SizedBox(width: TSizes.spaceBtwItems,),
                        itemBuilder: (context,index) => const TProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
