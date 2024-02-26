import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.image,
    this.title,
    this.price,
    this.quantity,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgBurgerAndSand45x70);
    title = title ?? Rx(" Noodles");
    price = price ?? Rx("18");
    quantity = quantity ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? price;

  Rx<String>? quantity;

  Rx<String>? id;
}
