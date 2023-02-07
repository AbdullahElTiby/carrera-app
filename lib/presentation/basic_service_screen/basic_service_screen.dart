import '../basic_service_screen/widgets/basic_service_item_widget.dart';
import 'controller/basic_service_controller.dart';
import 'models/basic_service_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdullah_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application1/widgets/custom_button.dart';
import 'package:abdullah_s_application1/widgets/custom_checkbox.dart';
import 'package:abdullah_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class BasicServiceScreen extends GetWidget<BasicServiceController> {
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
                    onTap: onTapArrowleft1),
                title: AppbarSubtitle(
                    text: "lbl_basic_service".tr, margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, top: 16),
                          child: Row(children: [
                            CustomIconButton(
                                height: 20,
                                width: 20,
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgCarBlack90020x20)),
                            Padding(
                                padding: getPadding(left: 8, top: 2, bottom: 2),
                                child: Text("lbl_4_hour_taken".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium12))
                          ])),
                      Obx(() => CustomCheckbox(
                          text: "msg_1000_kms_or_1_month".tr,
                          iconSize: 20,
                          value: controller.checkbox.value,
                          padding: getPadding(left: 16, top: 8),
                          onChange: (value) {
                            controller.checkbox.value = value;
                          })),
                      Padding(
                          padding: getPadding(left: 16, top: 8),
                          child: Row(children: [
                            CustomIconButton(
                                height: 20,
                                width: 20,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgThumbsup)),
                            Padding(
                                padding: getPadding(left: 8, top: 3, bottom: 1),
                                child: Text("msg_every_5000_kms_or".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium12))
                          ])),
                      Padding(
                          padding: getPadding(left: 16, top: 8),
                          child: Row(children: [
                            CustomIconButton(
                                height: 20,
                                width: 20,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgClock)),
                            Padding(
                                padding: getPadding(left: 8, top: 3, bottom: 1),
                                child: Text("msg_free_pick_up_or".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium12))
                          ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 16, top: 14),
                          child: Text("msg_what_s_included".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold14)),
                      Padding(
                          padding: getPadding(left: 16, top: 15),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmarkGreenA700,
                                height: getSize(12.00),
                                width: getSize(12.00),
                                margin: getMargin(bottom: 2)),
                            Padding(
                                padding: getPadding(left: 8),
                                child: Text("msg_engine_oil_replacement".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular12Gray600))
                          ])),
                      Padding(
                          padding: getPadding(left: 16, top: 10),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmarkGreenA700,
                                height: getSize(12.00),
                                width: getSize(12.00),
                                margin: getMargin(bottom: 2)),
                            Padding(
                                padding: getPadding(left: 8),
                                child: Text("msg_oil_filter_replacement".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular12Gray600))
                          ])),
                      Padding(
                          padding: getPadding(left: 16, top: 11),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmarkGreenA700,
                                height: getSize(12.00),
                                width: getSize(12.00),
                                margin: getMargin(bottom: 2)),
                            Padding(
                                padding: getPadding(left: 8),
                                child: Text("msg_air_filter_cleaning".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular12Gray600))
                          ])),
                      Padding(
                          padding: getPadding(left: 16, top: 10),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmarkGreenA700,
                                height: getSize(12.00),
                                width: getSize(12.00),
                                margin: getMargin(bottom: 2)),
                            Padding(
                                padding: getPadding(left: 8),
                                child: Text("lbl_coolant_top_up".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular12Gray600))
                          ])),
                      Padding(
                          padding: getPadding(left: 16, top: 11),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmarkGreenA700,
                                height: getSize(12.00),
                                width: getSize(12.00),
                                margin: getMargin(bottom: 2)),
                            Padding(
                                padding: getPadding(left: 8),
                                child: Text("msg_wiper_fluid_replacement".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular12Gray600))
                          ])),
                      Padding(
                          padding: getPadding(left: 16, top: 11),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmarkGreenA700,
                                height: getSize(12.00),
                                width: getSize(12.00),
                                margin: getMargin(bottom: 2)),
                            Padding(
                                padding: getPadding(left: 8),
                                child: Text("msg_battery_water_top".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular12Gray600))
                          ])),
                      Padding(
                          padding: getPadding(left: 16, top: 10),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmarkGreenA700,
                                height: getSize(12.00),
                                width: getSize(12.00),
                                margin: getMargin(bottom: 2)),
                            Padding(
                                padding: getPadding(left: 8),
                                child: Text("msg_heater_spark_plugs".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular12Gray600))
                          ])),
                      Padding(
                          padding: getPadding(left: 16, top: 9),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmarkGreenA700,
                                height: getSize(12.00),
                                width: getSize(12.00),
                                margin: getMargin(top: 1, bottom: 1)),
                            Padding(
                                padding: getPadding(left: 8),
                                child: Text("lbl_car_wash".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular12Gray600))
                          ])),
                      Padding(
                          padding: getPadding(left: 16, top: 12),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmarkGreenA700,
                                height: getSize(12.00),
                                width: getSize(12.00),
                                margin: getMargin(bottom: 2)),
                            Padding(
                                padding: getPadding(left: 8),
                                child: Text("msg_interior_vacuuming".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular12Gray600))
                          ])),
                      Padding(
                          padding: getPadding(left: 16, top: 14),
                          child: Text("msg_customer_reviews".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold14)),
                      Container(
                          height: getVerticalSize(124.00),
                          width: getHorizontalSize(499.00),
                          margin: getMargin(top: 15),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                        height: getVerticalSize(124.00),
                                        child: Obx(() => ListView.separated(
                                            padding: getPadding(bottom: 40),
                                            scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height:
                                                      getVerticalSize(16.00));
                                            },
                                            itemCount: controller
                                                .basicServiceModelObj
                                                .value
                                                .basicServiceItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              BasicServiceItemModel model =
                                                  controller
                                                          .basicServiceModelObj
                                                          .value
                                                          .basicServiceItemList[
                                                      index];
                                              return BasicServiceItemWidget(
                                                  model);
                                            })))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        width: size.width,
                                        margin: getMargin(left: 139, top: 76),
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
                                                  text: "lbl_add".tr,
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

  onTapArrowleft1() {
    Get.back();
  }
}
