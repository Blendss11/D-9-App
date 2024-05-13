import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBar extends StatelessWidget implements PreferredSizeWidget{
  const TabBar({
    super.key, 
    required this.tabs, 
    required this.isScrollable, 
    required this.indicatorColor, required Color unselectedLabelColor
  });

  final List<Widget> tabs;
  final bool isScrollable;
  final Color indicatorColor;

  @override
  Widget build(BuildContext context) {

    return Material(
        child: TabBar(
            tabs: tabs,
            isScrollable: true,
            indicatorColor: Tcolors.primaryColor,
            unselectedLabelColor: Tcolors.grey,
            ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtility.getAppBarHeight());
}