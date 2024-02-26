import 'controller/sign_up_controller.dart';
import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/core/utils/validation_functions.dart';
import 'package:fast_food_app/widgets/custom_elevated_button.dart';
import 'package:fast_food_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

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
                            padding: EdgeInsets.only(
                                left: 38.h, top: 69.v, right: 38.h),
                            child: Column(children: [
                              SizedBox(height: 5.v),
                              Container(
                                  margin: EdgeInsets.only(left: 4.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 32.v),
                                  decoration: AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder50),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text("lbl_sign_up".tr,
                                                    style: theme.textTheme
                                                        .headlineSmall))),
                                        SizedBox(height: 54.v),
                                        _buildEmailField(),
                                        SizedBox(height: 35.v),
                                        _buildPasswordField(),
                                        SizedBox(height: 35.v),
                                        _buildConfirmPasswordField(),
                                        SizedBox(height: 61.v),
                                        _buildSignUpButton(),
                                        SizedBox(height: 15.v)
                                      ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmailField() {
    return CustomTextFormField(
        controller: controller.emailFieldController,
        hintText: "lbl_email_address".tr,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.only(left: 6.h, right: 5.h, bottom: 6.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEvaemailoutline,
                height: 27.adaptSize,
                width: 27.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPasswordField() {
    return CustomTextFormField(
        controller: controller.passwordFieldController,
        hintText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.only(left: 6.h, right: 5.h, bottom: 5.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMaterialsymbolslightlockoutline,
                height: 27.adaptSize,
                width: 27.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 32.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildConfirmPasswordField() {
    return CustomTextFormField(
        controller: controller.confirmPasswordFieldController,
        hintText: "msg_confirm_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.only(left: 6.h, right: 1.h, bottom: 5.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMaterialsymbolslightlockoutline,
                height: 27.adaptSize,
                width: 27.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 32.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildSignUpButton() {
    return CustomElevatedButton(
        width: 157.h,
        text: "lbl_sign_up".tr,
        onPressed: () {
          onTapSignUpButton();
        });
  }

  /// Navigates to the menuContainerScreen when the action is triggered.
  onTapSignUpButton() {
    Get.toNamed(
      AppRoutes.menuContainerScreen,
    );
  }
}
