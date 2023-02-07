import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/presentation/ongoing_service_page/models/ongoing_service_model.dart';

class OngoingServiceController extends GetxController {
  OngoingServiceController(this.ongoingServiceModelObj);

  Rx<OngoingServiceModel> ongoingServiceModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    ongoingServiceModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    ongoingServiceModelObj.value.dropdownItemList.refresh();
  }
}
