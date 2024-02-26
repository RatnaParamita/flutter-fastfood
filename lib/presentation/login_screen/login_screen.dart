import 'controller/login_controller.dart';
import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

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
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 40.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse1,
                          height: 250.adaptSize,
                          width: 250.adaptSize,
                          radius: BorderRadius.circular(125.h)),
                      SizedBox(height: 32.v),
                      SizedBox(
                          width: 192.h,
                          child: Text("msg_enjoy_your_food".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 53.v),
                      CustomElevatedButton(
                          height: 54.v,
                          width: 210.h,
                          text: "lbl_get_started".tr,
                          buttonStyle: CustomButtonStyles.fillWhiteA,
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallPrimary,
                          onPressed: () {
                            onTapGetStarted();
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapGetStarted() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
