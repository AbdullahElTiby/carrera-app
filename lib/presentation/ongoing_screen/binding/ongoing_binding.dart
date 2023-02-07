import '../controller/ongoing_controller.dart';
import 'package:get/get.dart';

class OngoingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OngoingController());
  }
}
