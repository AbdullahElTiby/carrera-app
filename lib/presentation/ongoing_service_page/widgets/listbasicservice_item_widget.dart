import '../controller/ongoing_service_controller.dart';
import '../models/listbasicservice_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListbasicserviceItemWidget extends StatelessWidget {
  ListbasicserviceItemWidget(this.listbasicserviceItemModelObj);

  ListbasicserviceItemModel listbasicserviceItemModelObj;

  var controller = Get.find<OngoingServiceController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray5003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 16,
                top: 15,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_basic_service".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoBold16,
                  ),
                  Container(
                    width: getHorizontalSize(
                      67.00,
                    ),
                    margin: getMargin(
                      bottom: 4,
                    ),
                    padding: getPadding(
                      left: 5,
                      top: 1,
                      right: 5,
                      bottom: 1,
                    ),
                    decoration: AppDecoration.txtOutlineGreenA700.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                    ),
                    child: Text(
                      "lbl_confirmed".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold10GreenA700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 9,
            ),
            child: Text(
              "msg_booking_id_123456789".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular14Gray600,
            ),
          ),
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              328.00,
            ),
            margin: getMargin(
              top: 14,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray30001,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 16,
              right: 31,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_general_motoegy".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold16,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTicketWhiteA700,
                      height: getVerticalSize(
                        6.00,
                      ),
                      width: getHorizontalSize(
                        46.00,
                      ),
                      margin: getMargin(
                        top: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Text(
                        "lbl_date".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoBold12Gray600,
                      ),
                    ),
                    Text(
                      "msg_21st_sept_2023".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular12Gray600,
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 35,
                    bottom: 1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_pick_up_time".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoBold12Gray600,
                      ),
                      Text(
                        "lbl_9_00_9_30am2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular12Gray600,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getVerticalSize(
              40.00,
            ),
            width: getHorizontalSize(
              328.00,
            ),
            margin: getMargin(
              top: 14,
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getVerticalSize(
                      40.00,
                    ),
                    width: getHorizontalSize(
                      1.00,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray30001,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      328.00,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray30001,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 65,
                    ),
                    child: Text(
                      "lbl_call".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold14Black900,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      right: 55,
                    ),
                    child: Text(
                      "lbl_cancel".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold14Red600,
                    ),
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
