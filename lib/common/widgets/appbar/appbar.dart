
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppaBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppaBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.action,
      this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSize.md),
        child: AppBar(
            automaticallyImplyLeading: false,
            leading: showBackArrow
                ? IconButton(onPressed: () => Get.back(),icon: const Icon(Iconsax.arrow_left, color: Colors.black,))
                : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
                title: title,
                actions: action,
                )
              );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtility.getAppBarHeight());
}
