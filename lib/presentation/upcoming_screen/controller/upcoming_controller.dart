import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/presentation/upcoming_screen/models/upcoming_model.dart';
import 'package:abdullah_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class UpcomingController extends GetxController {
  TextEditingController groupFortyOneController = TextEditingController();

  Rx<UpcomingModel> upcomingModelObj = UpcomingModel().obs;

  Rx<int> silderIndex = 0.obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFortyOneController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    upcomingModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    upcomingModelObj.value.dropdownItemList.refresh();
  }
}
