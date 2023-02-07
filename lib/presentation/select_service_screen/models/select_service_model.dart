import 'package:get/get.dart';
import 'select_service_item_model.dart';

class SelectServiceModel {
  RxList<SelectServiceItemModel> selectServiceItemList =
      RxList.filled(3, SelectServiceItemModel());
}
