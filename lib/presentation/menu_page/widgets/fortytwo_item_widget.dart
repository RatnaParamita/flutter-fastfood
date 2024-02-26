import '../controller/menu_controller.dart';
import '../models/fortytwo_item_model.dart';
import 'package:fast_food_app/core/app_export.dart';
import 'package:flutter/material.dart' hide MenuController;

// ignore: must_be_immutable
class FortytwoItemWidget extends StatelessWidget {
  FortytwoItemWidget(
    this.fortytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortytwoItemModel fortytwoItemModelObj;

  var controller = Get.find<MenuController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            Container(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Obx(
                () => CustomImageView(
                  imagePath: fortytwoItemModelObj.all!.value,
                  height: 32.v,
                  width: 55.h,
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(height: 5.v),
            Obx(
              () => Text(
                fortytwoItemModelObj.all1!.value,
                style: CustomTextStyles.bodyMediumGray700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
