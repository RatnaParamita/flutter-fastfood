import 'controller/menu_container_controller.dart';
import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/presentation/menu_page/menu_page.dart';
import 'package:fast_food_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MenuContainerScreen extends GetWidget<MenuContainerController> {
  const MenuContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.menuPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.menuPage;
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Mdicartoutline:
        return "/";
      case BottomBarEnum.Iconamoonprofile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.menuPage:
        return MenuPage();
      default:
        return DefaultWidget();
    }
  }
}
