import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController confirmPasswordFieldController =
      TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
    confirmPasswordFieldController.dispose();
  }
}
