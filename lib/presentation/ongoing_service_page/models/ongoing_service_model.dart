import 'package:get/get.dart';
import 'listbasicservice_item_model.dart';
import 'listhome_item_model.dart';
import 'package:abdullah_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';

class OngoingServiceModel {
  RxList<ListbasicserviceItemModel> listbasicserviceItemList =
      RxList.filled(2, ListbasicserviceItemModel());

  RxList<ListhomeItemModel> listhomeItemList =
      RxList.filled(3, ListhomeItemModel());

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
