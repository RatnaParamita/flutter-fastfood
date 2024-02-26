import '../controller/end_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EndScreen.
///
/// This class ensures that the EndController is created when the
/// EndScreen is first loaded.
class EndBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EndController());
  }
}
