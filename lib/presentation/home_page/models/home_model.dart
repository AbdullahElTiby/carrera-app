import 'package:get/get.dart';
import 'sliderads_item_model.dart';
import 'home_item_model.dart';
import 'package:abdullah_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';

class HomeModel {
  RxList<SlideradsItemModel> slideradsItemList =
      RxList.filled(1, SlideradsItemModel());

  RxList<HomeItemModel> homeItemList = RxList.filled(2, HomeItemModel());

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
