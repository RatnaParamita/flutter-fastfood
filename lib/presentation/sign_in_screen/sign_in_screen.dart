import 'controller/sign_in_controller.dart';
import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/core/utils/validation_functions.dart';
import 'package:fast_food_app/widgets/custom_elevated_button.dart';
import 'package:fast_food_app/widgets/custom_icon_button.dart';
import 'package:fast_food_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
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
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 37.h, vertical: 60.v),
                            child: Column(children: [
                              SizedBox(height: 8.v),
                              Container(
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 19.h, vertical: 26.v),
                                  decoration: AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder50),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 7.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: Text("lbl_sign_in".tr,
                                                style: theme
                                                    .textTheme.headlineSmall)),
                                        SizedBox(height: 54.v),
                                        CustomTextFormField(
                                            controller:
                                                controller.emailController,
                                            hintText: "lbl_email_address".tr,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            prefix: Container(
                                                margin: EdgeInsets.only(
                                                    left: 6.h,
                                                    right: 5.h,
                                                    bottom: 6.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEvaemailoutline,
                                                    height: 27.adaptSize,
                                                    width: 27.adaptSize)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 33.v),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_email"
                                                    .tr;
                                              }
                                              return null;
                                            }),
                                        SizedBox(height: 35.v),
                                        CustomTextFormField(
                                            controller:
                                                controller.passwordController,
                                            hintText: "lbl_password".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            prefix: Container(
                                                margin: EdgeInsets.only(
                                                    left: 6.h,
                                                    right: 5.h,
                                                    bottom: 5.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMaterialsymbolslightlockoutline,
                                                    height: 27.adaptSize,
                                                    width: 27.adaptSize)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 32.v),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_password"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            obscureText: true),
                                        SizedBox(height: 24.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxtForgotPassword();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 2.h),
                                                    child: Text(
                                                        "msg_forgot_password"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodySmallWhiteA700)))),
                                        SizedBox(height: 44.v),
                                        CustomElevatedButton(
                                            width: 157.h,
                                            text: "lbl_sign_in".tr,
                                            margin: EdgeInsets.only(left: 45.h),
                                            onPressed: () {
                                              onTapSignIn();
                                            }),
                                        SizedBox(height: 24.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxtDontahaveaccount();
                                                },
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_don_t_a_have_account2"
                                                                  .tr,
                                                          style: CustomTextStyles
                                                              .bodySmallffffffff),
                                                      TextSpan(
                                                          text:
                                                              "lbl_sign_up".tr,
                                                          style: theme.textTheme
                                                              .labelMedium)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.left))),
                                        SizedBox(height: 18.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 5.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 6.v,
                                                          bottom: 8.v),
                                                      child: SizedBox(
                                                          width: 103.h,
                                                          child: Divider())),
                                                  Text("lbl_or".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallWhiteA700),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 6.v,
                                                          bottom: 8.v),
                                                      child: SizedBox(
                                                          width: 103.h,
                                                          child: Divider()))
                                                ])),
                                        SizedBox(height: 12.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 72.h),
                                            child: Row(children: [
                                              CustomIconButton(
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize,
                                                  padding: EdgeInsets.all(4.h),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgLaFacebook)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgMingcuteGoogleFill,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 10.h,
                                                      top: 4.v,
                                                      bottom: 4.v)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRiInstagramLine,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 14.h,
                                                      top: 4.v,
                                                      bottom: 4.v))
                                            ]))
                                      ]))
                            ])))))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the menuContainerScreen when the action is triggered.
  onTapSignIn() {
    Get.toNamed(
      AppRoutes.menuContainerScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDontahaveaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
