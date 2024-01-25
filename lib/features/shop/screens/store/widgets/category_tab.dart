import 'package:flutter/material.dart';
import 'package:kishan_se/common/widgets/layouts/grid_layout.dart';
import 'package:kishan_se/common/widgets/texts/section_heading.dart';

import '../../../../../utils/constants/size.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          /// Products
          TSectionHeading(title: 'You can also look', onPressed: (){}),
          SizedBox(height: TSizes.spaceBtwItems),

          //TGridLayout(itemCount: 4, itemBuilder: (_, index) => TP)
        ],
      ),
    );
  }
}
