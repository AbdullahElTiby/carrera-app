import '../controller/select_service_controller.dart';
import 'package:get/get.dart';

class SelectServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectServiceController());
  }
}
