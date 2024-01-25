import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../custom_shapes/containers/circular_container.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularContainer(// image: TImages.user
        width: 50,height: 50,padding: 0,),
      title: Text("Prashant Bastola", style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
      subtitle: Text("bastolaprashant09@gmail.com", style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: TColors.white,)),
    );
  }
}

