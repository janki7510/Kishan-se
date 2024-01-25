import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kishan_se/common/widgets/appbar/appbar.dart';
import 'package:kishan_se/common/widgets/images/t_rounded_images.dart';
import 'package:kishan_se/common/widgets/products/product_cards/product_price_text.dart';
import 'package:kishan_se/common/widgets/texts/product_title_text.dart';
import 'package:kishan_se/common/widgets/texts/t_brand_title_text.dart';
import 'package:kishan_se/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:kishan_se/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:kishan_se/utils/constants/image_strings.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/images/t_circular_icon.dart';
import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';
import '../../checkout/widgets/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(showBackArrow: true ,title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace,),

        /// Items in Cart
        child: TCartItems()
      ),

      ///Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('CheckOut ₹15.0'),),
      ),
    );
  }
}




