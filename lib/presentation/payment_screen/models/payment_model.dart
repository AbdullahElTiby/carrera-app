import 'package:get/get.dart';
import 'payment_item_model.dart';

class PaymentModel {
  RxList<PaymentItemModel> paymentItemList =
      RxList.filled(2, PaymentItemModel());
}
