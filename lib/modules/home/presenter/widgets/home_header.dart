import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_icons.dart';
import '../../../../models/custom_search_box.dart';
import '../../infra/datasources/user_controller.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CommonSearchBox(
          controller: controller.searchBoxController,
          hint: 'Search',
        ),
        SvgPicture.asset(AppIcons.send),
      ],
    );
  }
}
