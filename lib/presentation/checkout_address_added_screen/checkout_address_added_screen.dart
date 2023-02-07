import 'controller/checkout_address_added_controller.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdullah_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application1/widgets/custom_button.dart';
import 'package:abdullah_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CheckoutAddressAddedScreen
    extends GetWidget<CheckoutAddressAddedController> {
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
                    onTap: onTapArrowleft3),
                title: AppbarSubtitle(
                    text: "lbl_checkout".tr, margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 15, top: 18, right: 17),
                          padding: getPadding(
                              left: 14, top: 6, right: 14, bottom: 6),
                          decoration: AppDecoration.outlineGray5003f01.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLocationBlack900,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(17.00),
                                    margin: getMargin(top: 5, bottom: 33)),
                                Container(
                                    height: getVerticalSize(61.00),
                                    width: getHorizontalSize(142.00),
                                    margin: getMargin(left: 16, top: 2),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  "lbl_pick_up_address".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoBold14)),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(142.00),
                                                  child: Text(
                                                      "msg_blablabal_bla".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular12)))
                                        ])),
                                Spacer(),
                                Padding(
                                    padding: getPadding(
                                        top: 5, right: 2, bottom: 41),
                                    child: Text("lbl_change".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoBold14Black900))
                              ])),
                      Container(
                          height: getVerticalSize(466.00),
                          width: size.width,
                          margin: getMargin(top: 17),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 16, right: 16),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("msg_when_do_you_want".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRobotoBold16),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Text(
                                                      "lbl_select_date".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoBold14)),
                                              Padding(
                                                  padding: getPadding(top: 15),
                                                  child: Row(children: [
                                                    Container(
                                                        padding:
                                                            getPadding(all: 11),
                                                        decoration: AppDecoration
                                                            .outlineBlack9001
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_today"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoBold14Black900)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              11,
                                                                          top:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_21"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoBold14Black900))
                                                            ])),
                                                    Container(
                                                        margin:
                                                            getMargin(left: 16),
                                                        padding: getPadding(
                                                            left: 8,
                                                            top: 11,
                                                            right: 8,
                                                            bottom: 11),
                                                        decoration: AppDecoration
                                                            .outlineGray500
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_tomorrow"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoBold14),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              2),
                                                                  child: Text(
                                                                      "lbl_22"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoBold14))
                                                            ])),
                                                    Container(
                                                        margin:
                                                            getMargin(left: 16),
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 11,
                                                            right: 16,
                                                            bottom: 11),
                                                        decoration: AppDecoration
                                                            .outlineGray500
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("lbl_wed".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoBold14),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              3),
                                                                  child: Text(
                                                                      "lbl_23"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoBold14))
                                                            ])),
                                                    Container(
                                                        margin:
                                                            getMargin(left: 16),
                                                        padding: getPadding(
                                                            left: 17,
                                                            top: 11,
                                                            right: 17,
                                                            bottom: 11),
                                                        decoration: AppDecoration
                                                            .outlineGray500
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("lbl_thu".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRobotoBold14),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              3),
                                                                  child: Text(
                                                                      "lbl_24"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoBold14))
                                                            ]))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(top: 24),
                                                  child: Text(
                                                      "msg_select_pick_up_time"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoBold14)),
                                              Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomButton(
                                                            height: 48,
                                                            width: 156,
                                                            text:
                                                                "lbl_8_00_8_30am"
                                                                    .tr,
                                                            variant: ButtonVariant
                                                                .OutlineGray500,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RobotoBold14Gray800),
                                                        CustomButton(
                                                            height: 48,
                                                            width: 156,
                                                            text:
                                                                "lbl_8_30_9_00am"
                                                                    .tr)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomButton(
                                                            height: 48,
                                                            width: 156,
                                                            text:
                                                                "lbl_9_00_9_30am"
                                                                    .tr,
                                                            variant: ButtonVariant
                                                                .OutlineBlack900_2,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RobotoBold14Black900),
                                                        CustomButton(
                                                            height: 48,
                                                            width: 156,
                                                            text:
                                                                "lbl_9_30_10_00am"
                                                                    .tr,
                                                            variant: ButtonVariant
                                                                .OutlineGray500,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RobotoBold14Gray800)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomButton(
                                                            height: 48,
                                                            width: 156,
                                                            text:
                                                                "lbl_10_00_10_30am"
                                                                    .tr),
                                                        CustomTextFormField(
                                                            width: 156,
                                                            focusNode:
                                                                FocusNode(),
                                                            controller: controller
                                                                .timeController,
                                                            hintText:
                                                                "lbl_10_30_11_00am"
                                                                    .tr)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomTextFormField(
                                                            width: 156,
                                                            focusNode:
                                                                FocusNode(),
                                                            controller: controller
                                                                .timeOneController,
                                                            hintText:
                                                                "lbl_11_00_11_30am"
                                                                    .tr,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .done),
                                                        CustomButton(
                                                            height: 48,
                                                            width: 156,
                                                            text:
                                                                "lbl_11_30_12_00pm"
                                                                    .tr)
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        width: size.width,
                                        margin: getMargin(top: 418),
                                        padding: getPadding(
                                            left: 24,
                                            top: 4,
                                            right: 24,
                                            bottom: 4),
                                        decoration:
                                            AppDecoration.outlineGray2003f,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  width:
                                                      getHorizontalSize(84.00),
                                                  margin: getMargin(top: 2),
                                                  child: Text(
                                                      "msg_basic_service_egy"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoBold14)),
                                              CustomButton(
                                                  height: 32,
                                                  width: 88,
                                                  text: "lbl_proceed".tr,
                                                  margin: getMargin(
                                                      top: 3, bottom: 3),
                                                  variant: ButtonVariant
                                                      .OutlineBlack900_1,
                                                  shape: ButtonShape
                                                      .RoundedBorder4,
                                                  padding:
                                                      ButtonPadding.PaddingAll7,
                                                  fontStyle: ButtonFontStyle
                                                      .RobotoBold14)
                                            ])))
                              ]))
                    ]))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
