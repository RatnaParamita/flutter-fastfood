import '../../../core/app_export.dart';
import 'fortytwo_item_model.dart';
import 'menulist_item_model.dart';

/// This class defines the variables used in the [menu_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MenuModel {
  Rx<List<FortytwoItemModel>> fortytwoItemList = Rx([
    FortytwoItemModel(all: ImageConstant.imgFishAndChips.obs, all1: "All".obs),
    FortytwoItemModel(
        all: ImageConstant.imgBurgerAndSand.obs, all1: "Burger".obs),
    FortytwoItemModel(
        all: ImageConstant.imgMcdonaldSBur.obs, all1: "Dessert".obs),
    FortytwoItemModel(all1: "Pizza".obs)
  ]);

  Rx<List<MenulistItemModel>> menulistItemList = Rx([
    MenulistItemModel(burgerName: "Beef Burger".obs, burgerPrice: "20".obs),
    MenulistItemModel(burgerName: "Cheese Pizza".obs)
  ]);
}
