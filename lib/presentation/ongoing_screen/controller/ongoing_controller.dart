import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/presentation/ongoing_screen/models/ongoing_model.dart';
import 'package:abdullah_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class OngoingController extends GetxController {
  TextEditingController groupThreeController = TextEditingController();

  Rx<OngoingModel> ongoingModelObj = OngoingModel().obs;

  Rx<int> silderIndex = 0.obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThreeController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    ongoingModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    ongoingModelObj.value.dropdownItemList.refresh();
  }
}
