import '../controller/checkout_address_added_controller.dart';
import 'package:get/get.dart';

class CheckoutAddressAddedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutAddressAddedController());
  }
}
