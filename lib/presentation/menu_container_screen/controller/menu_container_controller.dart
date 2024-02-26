import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/presentation/menu_container_screen/models/menu_container_model.dart';

/// A controller class for the MenuContainerScreen.
///
/// This class manages the state of the MenuContainerScreen, including the
/// current menuContainerModelObj
class MenuContainerController extends GetxController {
  Rx<MenuContainerModel> menuContainerModelObj = MenuContainerModel().obs;
}
