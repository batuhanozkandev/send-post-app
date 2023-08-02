import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:send_post_app/modules/category/infra/datasources/category_controller.dart';

import '../../../core/constants/app_icons.dart';
import '../../../models/custom_search_box.dart';
import '../../base_page/presenter/base_page.dart';

class CategoryScreen extends GetWidget<CategoryController> {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      hasFocusHandler: true,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CommonSearchBox(
                controller: controller.searchTextController,
                hint: 'Search',
              ),
              SvgPicture.asset(AppIcons.send),
            ],
          )
        ],
      ),
    );
  }
}
