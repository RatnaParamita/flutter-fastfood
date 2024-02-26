import '../controller/menu_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MenuContainerScreen.
///
/// This class ensures that the MenuContainerController is created when the
/// MenuContainerScreen is first loaded.
class MenuContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuContainerController());
  }
}
