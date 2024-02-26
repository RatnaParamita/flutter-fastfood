import '../menu_page/widgets/fortytwo_item_widget.dart';
import '../menu_page/widgets/menulist_item_widget.dart';
import 'controller/menu_controller.dart';
import 'models/fortytwo_item_model.dart';
import 'models/menu_model.dart';
import 'models/menulist_item_model.dart';
import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/widgets/app_bar/appbar_title.dart';
import 'package:fast_food_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fast_food_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fast_food_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart' hide MenuController;

// ignore_for_file: must_be_immutable
class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  MenuController controller = Get.put(MenuController(MenuModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7.h),
                          child: CustomSearchView(
                              controller: controller.searchController,
                              hintText: "lbl_search".tr)),
                      SizedBox(height: 11.v),
                      _buildMenuItems(),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_popular".tr,
                              style: CustomTextStyles.titleLargeRegular)),
                      SizedBox(height: 3.v),
                      _buildMenuList(),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("lbl_20".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelLargeAmberA400))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_menu".tr, margin: EdgeInsets.only(left: 39.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgDownload1RemovebgPreview,
              margin: EdgeInsets.symmetric(horizontal: 36.h))
        ]);
  }

  /// Section Widget
  Widget _buildMenuItems() {
    return Container(
        height: 244.v,
        width: 322.h,
        margin: EdgeInsets.only(left: 1.h),
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 1.h, top: 98.v),
                  child: Text("lbl_promotions".tr,
                      style: CustomTextStyles.titleLargeRegular))),
          Align(
              alignment: Alignment.center,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                    height: 88.v,
                    child: Obx(() => ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 29.h);
                        },
                        itemCount: controller
                            .menuModelObj.value.fortytwoItemList.value.length,
                        itemBuilder: (context, index) {
                          FortytwoItemModel model = controller
                              .menuModelObj.value.fortytwoItemList.value[index];
                          return FortytwoItemWidget(model);
                        }))),
                SizedBox(height: 2.v),
                SizedBox(
                    height: 153.v,
                    width: 319.h,
                    child: Stack(alignment: Alignment.topRight, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.h, vertical: 15.v),
                              decoration: AppDecoration.gradientPrimaryToOnError
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("lbl_today_s_offer".tr,
                                            style: CustomTextStyles
                                                .bodyMediumLight)),
                                    SizedBox(height: 3.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("msg_free_box_of_fries".tr,
                                            style: CustomTextStyles
                                                .titleSmallWhiteA700)),
                                    SizedBox(height: 5.v),
                                    Text("msg_on_all_orders_above".tr,
                                        style: CustomTextStyles.bodyMedium14),
                                    SizedBox(height: 6.v)
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.img46BestAndWor,
                          height: 89.v,
                          width: 144.h,
                          alignment: Alignment.topRight)
                    ]))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildMenuList() {
    return SizedBox(
        height: 160.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 7.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 1.h);
            },
            itemCount:
                controller.menuModelObj.value.menulistItemList.value.length,
            itemBuilder: (context, index) {
              MenulistItemModel model =
                  controller.menuModelObj.value.menulistItemList.value[index];
              return MenulistItemWidget(model, onTapThirteen: () {
                onTapThirteen();
              });
            })));
  }

  /// Navigates to the endScreen when the action is triggered.
  onTapThirteen() {
    Get.toNamed(
      AppRoutes.endScreen,
    );
  }
}
