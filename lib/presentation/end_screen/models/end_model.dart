import '../../../core/app_export.dart';
import 'listsection_item_model.dart';

/// This class defines the variables used in the [end_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EndModel {
  Rx<List<ListsectionItemModel>> listsectionItemList = Rx([
    ListsectionItemModel(jarlsbergNor: ImageConstant.imgJarlsbergNor.obs),
    ListsectionItemModel(jarlsbergNor: ImageConstant.imgFreeVectorK.obs)
  ]);
}
