import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/presentation/menu_page/models/menu_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MenuPage.
///
/// This class manages the state of the MenuPage, including the
/// current menuModelObj
class MenuController extends GetxController {
  MenuController(this.menuModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<MenuModel> menuModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
