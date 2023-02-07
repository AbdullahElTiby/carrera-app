import '../controller/basic_service_controller.dart';
import 'package:get/get.dart';

class BasicServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BasicServiceController());
  }
}
