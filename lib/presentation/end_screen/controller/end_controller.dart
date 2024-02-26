import 'package:fast_food_app/core/app_export.dart';
import 'package:fast_food_app/presentation/end_screen/models/end_model.dart';

/// A controller class for the EndScreen.
///
/// This class manages the state of the EndScreen, including the
/// current endModelObj
class EndController extends GetxController {
  Rx<EndModel> endModelObj = EndModel().obs;
}
