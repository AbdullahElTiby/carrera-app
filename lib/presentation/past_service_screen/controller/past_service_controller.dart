import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/presentation/past_service_screen/models/past_service_model.dart';
import 'package:abdullah_s_application1/widgets/custom_bottom_bar.dart';

class PastServiceController extends GetxController {
  Rx<PastServiceModel> pastServiceModelObj = PastServiceModel().obs;

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
    pastServiceModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    pastServiceModelObj.value.dropdownItemList.refresh();
  }
}
