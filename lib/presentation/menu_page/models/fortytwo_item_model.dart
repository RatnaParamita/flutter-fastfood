import '../../../core/app_export.dart';

/// This class is used in the [fortytwo_item_widget] screen.
class FortytwoItemModel {
  FortytwoItemModel({
    this.all,
    this.all1,
    this.id,
  }) {
    all = all ?? Rx(ImageConstant.imgFishAndChips);
    all1 = all1 ?? Rx("All");
    id = id ?? Rx("");
  }

  Rx<String>? all;

  Rx<String>? all1;

  Rx<String>? id;
}
