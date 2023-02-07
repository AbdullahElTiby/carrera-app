import 'package:get/get.dart';
import 'sliderrectanglesixteen_item_model.dart';
import 'upcoming_item_model.dart';
import 'package:abdullah_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';

class UpcomingModel {
  RxList<SliderrectanglesixteenItemModel> sliderrectanglesixteenItemList =
      RxList.filled(1, SliderrectanglesixteenItemModel());

  RxList<UpcomingItemModel> upcomingItemList =
      RxList.filled(2, UpcomingItemModel());

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
