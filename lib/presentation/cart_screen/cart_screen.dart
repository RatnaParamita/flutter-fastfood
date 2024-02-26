import '../cart_screen/widgets/userprofilelist_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/presentation/menu_page/menu_page.dart';
import 'package:fast_food_app/widgets/app_bar/appbar_title.dart';
import 'package:fast_food_app/widgets/app_bar/custom_app_bar.dart';
import 'package:fast_food_app/widgets/custom_bottom_bar.dart';
import 'package:fast_food_app/widgets/custom_elevated_button.dart';
import 'package:fast_food_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CartScreen extends GetWidget<CartController> {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h),
                child: Column(children: [
                  SizedBox(height: 16.v),
                  _buildUserProfileList(),
                  SizedBox(height: 16.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Text("msg_order_instructions".tr,
                              style: CustomTextStyles
                                  .bodyMediumPrimaryContainer))),
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.only(left: 17.h, right: 10.h),
                      child: CustomTextFormField(
                          controller: controller.editTextController,
                          textInputAction: TextInputAction.done)),
                  SizedBox(height: 15.v),
                  _buildTotalRow(),
                  SizedBox(height: 12.v),
                  SizedBox(
                      height: 106.v,
                      width: 276.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 4.h, right: 173.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgClose,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          alignment: Alignment.centerRight),
                                      SizedBox(height: 23.v),
                                      Text("lbl_beef_burger".tr,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 5.v),
                                      Text("lbl_20".tr,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .labelLargeAmberA400)
                                    ]))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtBackToMenu();
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 24.v),
                                    child: Text("lbl_back_to_menu".tr,
                                        style: CustomTextStyles
                                            .bodyMediumPrimaryContainer
                                            .copyWith(
                                                decoration: TextDecoration
                                                    .underline))))),
                        CustomElevatedButton(
                            height: 48.v,
                            width: 276.h,
                            text: "lbl_check_out".tr,
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientPrimaryToPrimaryDecoration,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumWhiteA700SemiBold,
                            alignment: Alignment.topCenter)
                      ]))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 46.v,
        title: AppbarTitle(
            text: "lbl_2_items_in_cart".tr,
            margin: EdgeInsets.only(left: 26.h)));
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Padding(
        padding: EdgeInsets.only(left: 13.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 25.v);
            },
            itemCount: controller
                .cartModelObj.value.userprofilelistItemList.value.length,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model = controller
                  .cartModelObj.value.userprofilelistItemList.value[index];
              return UserprofilelistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildTotalRow() {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 10.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_total".tr,
              style: CustomTextStyles.titleMediumPrimaryContainer),
          Text("lbl_38".tr, style: CustomTextStyles.titleSmallOnErrorContainer)
        ]));
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

  /// Navigates to the menuContainerScreen when the action is triggered.
  onTapTxtBackToMenu() {
    Get.toNamed(
      AppRoutes.menuContainerScreen,
    );
  }
}
