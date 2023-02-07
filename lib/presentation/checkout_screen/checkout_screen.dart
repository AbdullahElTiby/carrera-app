import 'controller/checkout_controller.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdullah_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application1/widgets/custom_button.dart';
import 'package:abdullah_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends GetWidget<CheckoutController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(24.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: onTapArrowleft2),
                title: AppbarSubtitle(
                    text: "lbl_checkout".tr, margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                padding: getPadding(left: 15, top: 16, right: 15, bottom: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                          width: 328,
                          focusNode: FocusNode(),
                          controller: controller.groupFortySixController,
                          hintText: "msg_add_pick_up_address".tr,
                          margin: getMargin(top: 2),
                          variant: TextFormFieldVariant.OutlineGray5003f01,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle: TextFormFieldFontStyle.RobotoBold14,
                          prefix: Container(
                              margin: getMargin(all: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLightbulb)),
                          prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(48.00))),
                      Padding(
                          padding: getPadding(left: 1, top: 26),
                          child: Text("msg_when_do_you_want".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold16)),
                      Padding(
                          padding: getPadding(left: 1, top: 14),
                          child: Text("lbl_select_date".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold14)),
                      Padding(
                          padding: getPadding(left: 1, top: 15),
                          child: Row(children: [
                            Container(
                                padding: getPadding(all: 11),
                                decoration: AppDecoration.outlineBlack9001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("lbl_today".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoBold14Black900)),
                                      Padding(
                                          padding: getPadding(left: 11, top: 1),
                                          child: Text("lbl_21".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoBold14Black900))
                                    ])),
                            Container(
                                margin: getMargin(left: 16),
                                padding: getPadding(
                                    left: 8, top: 11, right: 8, bottom: 11),
                                decoration: AppDecoration.outlineGray500
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_tomorrow".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoBold14),
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_22".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoBold14))
                                    ])),
                            Container(
                                margin: getMargin(left: 16),
                                padding: getPadding(
                                    left: 16, top: 11, right: 16, bottom: 11),
                                decoration: AppDecoration.outlineGray500
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_wed".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoBold14),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_23".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoBold14))
                                    ])),
                            Container(
                                margin: getMargin(left: 16),
                                padding: getPadding(
                                    left: 17, top: 11, right: 17, bottom: 11),
                                decoration: AppDecoration.outlineGray500
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_thu".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoBold14),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_24".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoBold14))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(left: 1, top: 24),
                          child: Text("msg_select_pick_up_time".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold14)),
                      Padding(
                          padding: getPadding(left: 1, top: 14, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: 48,
                                    width: 156,
                                    text: "lbl_8_00_8_30am".tr,
                                    variant: ButtonVariant.OutlineGray500,
                                    fontStyle:
                                        ButtonFontStyle.RobotoBold14Gray800),
                                CustomButton(
                                    height: 48,
                                    width: 156,
                                    text: "lbl_8_30_9_00am".tr)
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 16, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: 48,
                                    width: 156,
                                    text: "lbl_9_00_9_30am".tr,
                                    variant: ButtonVariant.OutlineBlack900_2,
                                    fontStyle:
                                        ButtonFontStyle.RobotoBold14Black900),
                                CustomButton(
                                    height: 48,
                                    width: 156,
                                    text: "lbl_9_30_10_00am".tr,
                                    variant: ButtonVariant.OutlineGray500,
                                    fontStyle:
                                        ButtonFontStyle.RobotoBold14Gray800)
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 16, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: 48,
                                    width: 156,
                                    text: "lbl_10_00_10_30am".tr),
                                CustomTextFormField(
                                    width: 156,
                                    focusNode: FocusNode(),
                                    controller: controller.timeController,
                                    hintText: "lbl_10_30_11_00am".tr)
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 16, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextFormField(
                                    width: 156,
                                    focusNode: FocusNode(),
                                    controller: controller.timeOneController,
                                    hintText: "lbl_11_00_11_30am".tr,
                                    textInputAction: TextInputAction.done),
                                CustomButton(
                                    height: 48,
                                    width: 156,
                                    text: "lbl_11_30_12_00pm".tr)
                              ]))
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
                          text: "lbl_proceed".tr,
                          margin: getMargin(top: 3, bottom: 3),
                          variant: ButtonVariant.FillGray50001,
                          shape: ButtonShape.RoundedBorder4,
                          padding: ButtonPadding.PaddingAll7,
                          fontStyle: ButtonFontStyle.RobotoBold14WhiteA70099)
                    ]))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
