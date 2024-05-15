import 'package:d9/common/widgets/image/circular_image.dart';
import 'package:d9/features/personalization/screens/autentication/controllers/signup/user_controller.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TuserProfile extends StatelessWidget {
  const TuserProfile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return ListTile(
      leading: const TcircularImage(
        image: Timage.VerifyIcon,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(controller.user.value.fullName, style: Theme.of(context).textTheme.headlineSmall!.apply(color: Tcolors.white)),
      subtitle: Text(controller.user.value.email, style: Theme.of(context).textTheme.bodyLarge!.apply(color: Tcolors.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color:Tcolors.white))
    );
  }
}