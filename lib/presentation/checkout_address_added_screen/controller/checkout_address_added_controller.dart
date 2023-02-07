import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/presentation/checkout_address_added_screen/models/checkout_address_added_model.dart';
import 'package:flutter/material.dart';

class CheckoutAddressAddedController extends GetxController {
  TextEditingController timeController = TextEditingController();

  TextEditingController timeOneController = TextEditingController();

  Rx<CheckoutAddressAddedModel> checkoutAddressAddedModelObj =
      CheckoutAddressAddedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    timeController.dispose();
    timeOneController.dispose();
  }
}
