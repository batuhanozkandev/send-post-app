import 'package:flutter/material.dart';
import 'package:send_post_app/core/configs/getX/base_controller.dart';

class CategoryController extends BaseController {
  TextEditingController searchTextController = TextEditingController();

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    builderId = 'categoryScreen';
    super.onInit();
  }
}
