import '../end_screen/widgets/listsection_item_widget.dart';
import 'controller/end_controller.dart';
import 'models/listsection_item_model.dart';
import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/widgets/custom_elevated_button.dart';
import 'package:fast_food_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class EndScreen extends GetWidget<EndController> {
  const EndScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.15, 1.02),
                        colors: [
                      theme.colorScheme.primary,
                      theme.colorScheme.secondaryContainer
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 13.v),
                      Container(
                          height: 230.adaptSize,
                          width: 230.adaptSize,
                          padding: EdgeInsets.symmetric(
                              horizontal: 29.h, vertical: 23.v),
                          decoration: AppDecoration.gradientOnPrimaryToGray
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder115),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgDoubleWhopper,
                              height: 164.v,
                              width: 171.h,
                              alignment: Alignment.topCenter)),
                      SizedBox(height: 24.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 19.h, vertical: 23.v),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL50),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildRowSection(),
                            SizedBox(height: 23.v),
                            _buildRowSection1(),
                            SizedBox(height: 3.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: 288.h,
                                    margin:
                                        EdgeInsets.only(left: 9.h, right: 39.h),
                                    child: Text("msg_big_juicy_beef_burger".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumGray60002))),
                            SizedBox(height: 14.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: Text("lbl_add_ons".tr,
                                        style: CustomTextStyles
                                            .titleMediumGray800))),
                            SizedBox(height: 10.v),
                            _buildListSection(),
                            SizedBox(height: 25.v),
                            CustomElevatedButton(
                                height: 48.v,
                                text: "lbl_add_to_cart".tr,
                                margin:
                                    EdgeInsets.only(left: 25.h, right: 24.h),
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientPrimaryToPrimaryDecoration,
                                buttonTextStyle: CustomTextStyles
                                    .titleMediumWhiteA700SemiBold,
                                onPressed: () {
                                  onTapAddToCart();
                                })
                          ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildRowSection() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomElevatedButton(
              height: 32.v,
              width: 68.h,
              text: "lbl_4_8".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgMaterialsymbolsstar,
                      height: 18.adaptSize,
                      width: 18.adaptSize)),
              buttonStyle: CustomButtonStyles.fillPink,
              buttonTextStyle: CustomTextStyles.titleMediumWhiteA700),
          Container(
              height: 24.v,
              width: 31.h,
              margin: EdgeInsets.only(top: 4.v, bottom: 3.v),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("lbl_20".tr, style: theme.textTheme.titleMedium)),
                Align(
                    alignment: Alignment.center,
                    child:
                        Text("lbl_20".tr, style: theme.textTheme.titleMedium))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildRowSection1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_beef_burger".tr,
                  style: CustomTextStyles.titleMediumPrimaryContainerMedium),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(bottom: 7.v),
                  child: CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgContrast))),
              Padding(
                  padding: EdgeInsets.only(left: 9.h, bottom: 7.v),
                  child: Text("lbl_1".tr, style: theme.textTheme.titleSmall)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, bottom: 6.v),
                  child: CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      padding: EdgeInsets.all(1.h),
                      child:
                          CustomImageView(imagePath: ImageConstant.imgGgAdd)))
            ]));
  }

  /// Section Widget
  Widget _buildListSection() {
    return SizedBox(
        height: 64.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 9.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 64.h);
            },
            itemCount:
                controller.endModelObj.value.listsectionItemList.value.length,
            itemBuilder: (context, index) {
              ListsectionItemModel model =
                  controller.endModelObj.value.listsectionItemList.value[index];
              return ListsectionItemWidget(model);
            })));
  }

  /// Navigates to the cartScreen when the action is triggered.
  onTapAddToCart() {
    Get.toNamed(
      AppRoutes.cartScreen,
    );
  }
}
