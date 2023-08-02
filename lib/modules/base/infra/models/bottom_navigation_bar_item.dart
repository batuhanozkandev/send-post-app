import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_icons.dart';

List<BottomNavigationBarItem> navBarItemList = [
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset(AppIcons.homeFilled),
    label: '',
    icon: SvgPicture.asset(AppIcons.home),
  ),
  BottomNavigationBarItem(
    label: '',
    icon: SvgPicture.asset(AppIcons.category),
    activeIcon: SvgPicture.asset(AppIcons.categoryFilled),
  ),
  BottomNavigationBarItem(
    label: '',
    icon: SvgPicture.asset(AppIcons.addCircle),
  ),
  BottomNavigationBarItem(
    label: '',
    icon: SvgPicture.asset(AppIcons.notification),
  ),
  BottomNavigationBarItem(
    label: '',
    icon: SvgPicture.asset(AppIcons.profile),
  ),
];
