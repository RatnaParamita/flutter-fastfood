import '../controller/end_controller.dart';
import '../models/listsection_item_model.dart';
import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListsectionItemWidget extends StatelessWidget {
  ListsectionItemWidget(
    this.listsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListsectionItemModel listsectionItemModelObj;

  var controller = Get.find<EndController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.v,
      width: 66.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 60.adaptSize,
              width: 60.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.gray200,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
          ),
          CustomIconButton(
            height: 20.adaptSize,
            width: 20.adaptSize,
            alignment: Alignment.bottomRight,
            child: CustomImageView(),
          ),
          Obx(
            () => CustomImageView(
              imagePath: listsectionItemModelObj.jarlsbergNor!.value,
              height: 60.adaptSize,
              width: 60.adaptSize,
              alignment: Alignment.topLeft,
            ),
          ),
        ],
      ),
    );
  }
}
