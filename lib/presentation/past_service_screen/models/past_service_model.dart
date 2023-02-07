import 'package:get/get.dart';
import 'past_service_item_model.dart';
import 'package:abdullah_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';

class PastServiceModel {
  RxList<PastServiceItemModel> pastServiceItemList =
      RxList.filled(3, PastServiceItemModel());

  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ].obs;
}
