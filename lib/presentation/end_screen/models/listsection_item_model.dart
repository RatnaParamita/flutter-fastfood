import '../../../core/app_export.dart';

/// This class is used in the [listsection_item_widget] screen.
class ListsectionItemModel {
  ListsectionItemModel({
    this.jarlsbergNor,
    this.id,
  }) {
    jarlsbergNor = jarlsbergNor ?? Rx(ImageConstant.imgJarlsbergNor);
    id = id ?? Rx("");
  }

  Rx<String>? jarlsbergNor;

  Rx<String>? id;
}
