import '../controller/menu_controller.dart';
import '../models/menulist_item_model.dart';
import 'package:fast_food_app/core/app_export.dart';
import 'package:flutter/material.dart' hide MenuController;

// ignore: must_be_immutable
class MenulistItemWidget extends StatelessWidget {
  MenulistItemWidget(
    this.menulistItemModelObj, {
    Key? key,
    this.onTapThirteen,
  }) : super(
          key: key,
        );

  MenulistItemModel menulistItemModelObj;

  var controller = Get.find<MenuController>();

  VoidCallback? onTapThirteen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 133.h,
      child: GestureDetector(
        onTap: () {
          onTapThirteen!.call();
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 7.v),
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 21.v,
          ),
          decoration: AppDecoration.gradientGrayEeToGrayEe.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 76.v),
              Obx(
                () => Text(
                  menulistItemModelObj.burgerName!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Obx(
                () => Text(
                  menulistItemModelObj.burgerPrice!.value,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
