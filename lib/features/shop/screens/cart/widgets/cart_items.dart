import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/products/product_cards/product_price_text.dart';
import '../../../../../utils/constants/size.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      shrinkWrap: true,
      itemCount : 5,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections,),
      itemBuilder: (_, index) =>  Column(
        children: [
          const TCartItem(),
          if(showAddRemoveButtons) const SizedBox(height: TSizes.spaceBtwItems,),

          if(showAddRemoveButtons)
            const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ///Extra Space
                  SizedBox(width: 70,),
                  /// Add Remove Buttons Row with total price
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),
              TProductPriceText(price: '15'),
            ],

          ),
        ],
      ),
    );
  }
}
