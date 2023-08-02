import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/constants/app_images.dart';
import 'package:send_post_app/core/extensions/sizer.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/core/extensions/theme.dart';
import 'package:send_post_app/modules/category/infra/datasources/category_controller.dart';

import '../../../core/constants/app_icons.dart';
import '../../../models/custom_search_box.dart';
import '../../base_page/presenter/base_page.dart';
import '../infra/models/category_header.dart';
import '../infra/models/discover_box_model.dart';

class CategoryScreen extends GetWidget<CategoryController> {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      hasFocusHandler: true,
      padding: EdgeInsets.symmetric(
        horizontal: context.paddingHuge,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonSearchBox(
                controller: controller.searchTextController,
                hint: 'Search',
              ),
              SvgPicture.asset(AppIcons.send),
            ],
          ),
          context.ySmall,
          CategoryHeader(
            title: 'Topic',
            seeMore: () {},
          ),
          context.yySmall,
          SizedBox(
            height: context.heightOfScreen(10),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return DiscoverBoxModel(
                    imageUrl: AppImages.dummyMakingVideo,
                    text: 'Making Video',
                    height: context.heightOfScreen(10),
                    width: context.heightOfScreen(20),
                  );
                }),
          ),
          context.ySmall,
          CategoryHeader(
            title: 'Collection',
            seeMore: () {},
          ),
          context.yySmall,
          SizedBox(
            height: context.heightOfScreen(10),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return DiscoverBoxModel(
                    imageUrl: AppImages.dummyVideoCreator,
                    text: 'Video Creater',
                    height: context.heightOfScreen(10),
                    width: context.heightOfScreen(30),
                  );
                }),
          ),
          context.ySmall,
          CategoryHeader(
            title: 'Collection',
            seeMore: () {},
          ),
          context.yySmall,
          SizedBox(
            height: context.heightOfScreen(15),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return DiscoverBoxModel(
                    imageUrl: AppImages.dummyPhotographer,
                    text: 'Photo',
                    height: context.heightOfScreen(15),
                    width: context.heightOfScreen(15),
                  );
                }),
          ),
        ],
      ),
    );
  }
}