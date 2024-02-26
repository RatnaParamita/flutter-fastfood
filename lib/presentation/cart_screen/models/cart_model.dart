import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {
  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        image: ImageConstant.imgBurgerAndSand45x70.obs,
        title: " Noodles".obs,
        price: "18".obs,
        quantity: "1".obs),
    UserprofilelistItemModel(
        image: ImageConstant.imgBurgerAndSand.obs,
        title: " Beef Burger".obs,
        price: "20".obs,
        quantity: "1".obs)
  ]);
}
