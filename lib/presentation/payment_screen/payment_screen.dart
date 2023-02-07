import '../payment_screen/widgets/payment_item_widget.dart';
import 'controller/payment_controller.dart';
import 'models/payment_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdullah_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class PaymentScreen extends GetWidget<PaymentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(24.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: onTapArrowleft4),
                title: AppbarSubtitle(
                    text: "lbl_payment".tr, margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 17, bottom: 17),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 21, right: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_service_total".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular14Gray800)),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_egy_2_499".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold14))
                              ])),
                      Padding(
                          padding: getPadding(left: 21, top: 14, right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("msg_convenience_charges".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular14Gray800),
                                Text("lbl_egy_100".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoBold14)
                              ])),
                      Container(
                          height: getVerticalSize(208.00),
                          width: size.width,
                          margin: getMargin(top: 14),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(left: 16, right: 7),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(right: 4),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        "msg_service_amount_payable"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoBold14),
                                                    Text("lbl_egy_2_599".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoBold14)
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 142),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        "lbl_amount_payable".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoBold14),
                                                    Text("lbl_egy_25992".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoBold14)
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: size.width,
                                    padding: getPadding(
                                        left: 16,
                                        top: 64,
                                        right: 16,
                                        bottom: 64),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: fs.Svg(
                                                ImageConstant.imgGroup24),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("lbl_apply_coupon".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoBold14),
                                          Container(
                                              margin: getMargin(top: 14),
                                              padding: getPadding(all: 8),
                                              decoration: AppDecoration
                                                  .outlineGray5003f
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 4,
                                                            top: 8,
                                                            bottom: 6),
                                                        child: Text(
                                                            "lbl_coupon_code"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoBold14Gray6007f)),
                                                    CustomButton(
                                                        height: 32,
                                                        width: 92,
                                                        text: "lbl_apply".tr,
                                                        variant: ButtonVariant
                                                            .OutlineBlack900_3,
                                                        padding: ButtonPadding
                                                            .PaddingAll7,
                                                        fontStyle: ButtonFontStyle
                                                            .RobotoBold14Black900)
                                                  ]))
                                        ])))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 19, top: 16),
                              child: Text("lbl_pay_using".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold14))),
                      Padding(
                          padding: getPadding(left: 16, top: 39, right: 16),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(28.00));
                              },
                              itemCount: controller
                                  .paymentModelObj.value.paymentItemList.length,
                              itemBuilder: (context, index) {
                                PaymentItemModel model = controller
                                    .paymentModelObj
                                    .value
                                    .paymentItemList[index];
                                return PaymentItemWidget(model);
                              })))
                    ])),
            bottomNavigationBar: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 4, right: 24, bottom: 4),
                decoration: AppDecoration.outlineGray2003f,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: getHorizontalSize(84.00),
                          margin: getMargin(top: 2),
                          child: Text("msg_basic_service_egy".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold14)),
                      CustomButton(
                          height: 32,
                          width: 88,
                          text: "lbl_pay".tr,
                          margin: getMargin(top: 3, bottom: 3),
                          variant: ButtonVariant.OutlineBlack900_1,
                          shape: ButtonShape.RoundedBorder4,
                          padding: ButtonPadding.PaddingAll7,
                          fontStyle: ButtonFontStyle.RobotoBold14)
                    ]))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
