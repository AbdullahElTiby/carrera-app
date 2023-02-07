import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/presentation/basic_service_screen/models/basic_service_model.dart';

class BasicServiceController extends GetxController {
  Rx<BasicServiceModel> basicServiceModelObj = BasicServiceModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
