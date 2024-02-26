import '../../../core/app_export.dart';

/// This class is used in the [menulist_item_widget] screen.
class MenulistItemModel {
  MenulistItemModel({
    this.burgerName,
    this.burgerPrice,
    this.id,
  }) {
    burgerName = burgerName ?? Rx("Beef Burger");
    burgerPrice = burgerPrice ?? Rx("20");
    id = id ?? Rx("");
  }

  Rx<String>? burgerName;

  Rx<String>? burgerPrice;

  Rx<String>? id;
}
