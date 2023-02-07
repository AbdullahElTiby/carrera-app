import '../controller/payment_controller.dart';
import '../models/payment_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PaymentItemWidget extends StatelessWidget {
  PaymentItemWidget(this.paymentItemModelObj);

  PaymentItemModel paymentItemModelObj;

  var controller = Get.find<PaymentController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 10,
        top: 7,
        right: 10,
        bottom: 7,
      ),
      decoration: AppDecoration.outlineGray5003f01.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Container(
            height: getSize(
              16.00,
            ),
            width: getSize(
              16.00,
            ),
            margin: getMargin(
              top: 9,
              bottom: 9,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              border: Border.all(
                color: ColorConstant.gray40002,
                width: getHorizontalSize(
                  1.00,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              right: 159,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgXmlid69,
                  height: getVerticalSize(
                    15.00,
                  ),
                  width: getHorizontalSize(
                    21.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    "msg_pay_via_debit_credit".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular10Gray700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
