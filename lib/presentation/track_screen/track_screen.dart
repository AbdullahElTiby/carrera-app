import 'controller/track_controller.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdullah_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class TrackScreen extends GetWidget<TrackController> {
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
                    onTap: onTapArrowleft5),
                title: AppbarSubtitle(
                    text: "lbl_track_order".tr, margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                padding: getPadding(all: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(328.00),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(left: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 15),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_basic_service"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoBold16),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9),
                                                            child: Text(
                                                                "msg_booking_id_123456789"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular14Gray600)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 7),
                                                            child: Text(
                                                                "lbl_general_motoegy"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoBold16)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgTicketWhiteA700,
                                                            height:
                                                                getVerticalSize(
                                                                    6.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    46.00),
                                                            margin: getMargin(
                                                                top: 2)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 15),
                                                            child: Text(
                                                                "lbl_date".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoBold12Gray600)),
                                                        Text(
                                                            "msg_21st_sept_2023"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular12Gray600)
                                                      ])),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .img8079160carrop,
                                                            height:
                                                                getVerticalSize(
                                                                    110.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    146.00)),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1,
                                                                        right:
                                                                            30),
                                                                child: Text(
                                                                    "lbl_pick_up_time"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoBold12Gray600))),
                                                        Text(
                                                            "lbl_9_00_9_30am2"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular12Gray600)
                                                      ]))
                                            ]))),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 15, bottom: 14),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_estimated_completion2"
                                                  .tr,
                                              style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w700)),
                                          TextSpan(
                                              text: "msg_tomorrow_12_30pm".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                        textAlign: TextAlign.left))
                              ])),
                      Padding(
                          padding: getPadding(top: 15, bottom: 5),
                          child: Row(children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomIconButton(
                                      height: 24,
                                      width: 24,
                                      variant: IconButtonVariant.FillBlack900,
                                      padding: IconButtonPadding.PaddingAll7,
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckmarkWhiteA700)),
                                  Container(
                                      height: getVerticalSize(288.00),
                                      width: getHorizontalSize(24.00),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(271.00),
                                                    width:
                                                        getHorizontalSize(2.00),
                                                    margin:
                                                        getMargin(right: 10),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black900))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding:
                                                        getPadding(top: 48),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              height: getSize(
                                                                  24.00),
                                                              width: getSize(
                                                                  24.00),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .black900,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(12.00)))),
                                                          Container(
                                                              height: getSize(
                                                                  24.00),
                                                              width: getSize(
                                                                  24.00),
                                                              margin: getMargin(
                                                                  top: 48),
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      ColorConstant
                                                                          .gray50,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              12.00)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .black900,
                                                                      width: getHorizontalSize(
                                                                          2.00)))),
                                                          Container(
                                                              height: getSize(
                                                                  24.00),
                                                              width: getSize(
                                                                  24.00),
                                                              margin: getMargin(
                                                                  top: 48),
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      ColorConstant
                                                                          .gray50,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              12.00)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .black900,
                                                                      width: getHorizontalSize(
                                                                          2.00))))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    height: getSize(24.00),
                                                    width: getSize(24.00),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .gray50,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    12.00)),
                                                        border: Border.all(
                                                            color: ColorConstant
                                                                .black900,
                                                            width:
                                                                getHorizontalSize(
                                                                    2.00)))))
                                          ]))
                                ]),
                            Padding(
                                padding: getPadding(left: 18),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_new_parts_arrived".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoBold16),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("msg_21st_sept_20232".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRegular12Gray600)),
                                      Padding(
                                          padding: getPadding(top: 35),
                                          child: Text("lbl_installation".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoBold16)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_in_progress".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRegular12Gray600)),
                                      Padding(
                                          padding: getPadding(top: 35),
                                          child: Text("msg_final_inspection".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoBold16)),
                                      Padding(
                                          padding: getPadding(top: 53),
                                          child: Text("lbl_ready_for_drop".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoBold16)),
                                      Padding(
                                          padding: getPadding(top: 52),
                                          child: Text("lbl_dropped".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRobotoBold16))
                                    ]))
                          ]))
                    ]))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
