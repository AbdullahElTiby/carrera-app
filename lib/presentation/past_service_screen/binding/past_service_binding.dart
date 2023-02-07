import '../controller/past_service_controller.dart';
import 'package:get/get.dart';

class PastServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PastServiceController());
  }
}
