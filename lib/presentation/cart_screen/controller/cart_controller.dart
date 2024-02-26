import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/presentation/cart_screen/models/cart_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CartScreen.
///
/// This class manages the state of the CartScreen, including the
/// current cartModelObj
class CartController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  Rx<CartModel> cartModelObj = CartModel().obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
  }
}
