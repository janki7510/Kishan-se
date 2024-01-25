import 'package:flutter/cupertino.dart';
import 'package:kishan_se/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:kishan_se/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

import '../../../../utils/constants/colors.dart';
class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: TColors.primary,
          padding: const EdgeInsets.all(0),
          /// --If ['size.infinity': is not true.in stack] error occurred ->Read README.md file at
          child: Stack(
              children: [
                /// Background custom shape
                Positioned(
                    top: -90,
                    right: -300,
                    child: TCircularContainer(
                        backgroundColor: TColors.textWhite.withOpacity(0.1))),
                Positioned(
                    top: 110,
                    right: 300,
                    child: TCircularContainer(
                        backgroundColor: TColors.textWhite.withOpacity(0.1))),
                  child,
              ],
            ),
        ),
      ),
    );
  }
}
