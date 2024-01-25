import 'package:flutter/material.dart';
import 'package:kishan_se/common/widgets/appbar/appbar.dart';
import 'package:kishan_se/utils/constants/colors.dart';

import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget{
  const THomeAppBar ({super.key});

  @override
  Widget build(BuildContext context){
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey )),
          Text(TTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white )),
      ],
    ),
      actions: [TCartCounterIcon(onPressed: (){}, iconColor: TColors.white,)],
    );
  }
}