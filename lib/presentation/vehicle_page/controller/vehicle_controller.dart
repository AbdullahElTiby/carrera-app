import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/presentation/vehicle_page/models/vehicle_model.dart';

class VehicleController extends GetxController {
  VehicleController(this.vehicleModelObj);

  Rx<VehicleModel> vehicleModelObj;

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
    vehicleModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    vehicleModelObj.value.dropdownItemList.refresh();
  }
}
