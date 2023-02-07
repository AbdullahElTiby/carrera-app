import 'package:get/get.dart';
import 'sliderrectanglesixteen1_item_model.dart';
import 'ongoing_item_model.dart';
import 'package:abdullah_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';

class OngoingModel {
  RxList<Sliderrectanglesixteen1ItemModel> sliderrectanglesixteen1ItemList =
      RxList.filled(1, Sliderrectanglesixteen1ItemModel());

  RxList<OngoingItemModel> ongoingItemList =
      RxList.filled(2, OngoingItemModel());

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
