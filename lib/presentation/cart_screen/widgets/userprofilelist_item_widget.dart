import '../controller/cart_controller.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100.v,
          width: 80.h,
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 26.v,
          ),
          decoration: AppDecoration.fillGrayEe.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Obx(
            () => CustomImageView(
              imagePath: userprofilelistItemModelObj.image!.value,
              height: 45.v,
              width: 70.h,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 9.v,
            bottom: 9.v,
          ),
          child: Column(
            children: [
              Obx(
                () => Text(
                  userprofilelistItemModelObj.title!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Obx(
                    () => Text(
                      userprofilelistItemModelObj.price!.value,
                      style: CustomTextStyles.titleSmallOnErrorContainer,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              SizedBox(
                width: 64.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      padding: EdgeInsets.all(2.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgContrastPrimary,
                      ),
                    ),
                    Obx(
                      () => Text(
                        userprofilelistItemModelObj.quantity!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      padding: EdgeInsets.all(1.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGgAdd,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 82.v),
          child: CustomIconButton(
            height: 20.adaptSize,
            width: 20.adaptSize,
            padding: EdgeInsets.all(5.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgCarbonCloseOutline,
            ),
          ),
        ),
      ],
    );
  }
}
