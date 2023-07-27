import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_icons.dart';

List<BottomNavigationBarItem> navBarItemList = [
  BottomNavigationBarItem(
    icon: SvgPicture.asset(AppIcons.home),
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(AppIcons.category),
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(AppIcons.addCircle),
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(AppIcons.notification),
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(AppIcons.profile),
  ),
];
