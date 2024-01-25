
import 'package:flutter/material.dart';
import 'package:kishan_se/utils/device/device_utility.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class TTabBar extends  StatelessWidget implements PreferredSizeWidget {
  /// If we want to add the background color to tabs , we have tp wrap them in Material widget.
  ///  To do that we need [PreferredSizeWidget] widget and that's why created custom class.
  const TTabBar({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color : dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkerGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
