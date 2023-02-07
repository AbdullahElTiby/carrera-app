import '../controller/select_service_controller.dart';
import '../models/select_service_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectServiceItemWidget extends StatelessWidget {
  SelectServiceItemWidget(this.selectServiceItemModelObj);

  SelectServiceItemModel selectServiceItemModelObj;

  var controller = Get.find<SelectServiceController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 12,
        top: 10,
        right: 12,
        bottom: 10,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_basic_service".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoBold16,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: getHorizontalSize(
                      152.00,
                    ),
                    margin: getMargin(
                      top: 7,
                    ),
                    child: Text(
                      "msg_every_5000_kms_3".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular12,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "lbl_egy_2_599".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoBold14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getVerticalSize(
              103.00,
            ),
            width: getHorizontalSize(
              88.00,
            ),
            margin: getMargin(
              top: 3,
              right: 4,
              bottom: 3,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle21,
                  height: getSize(
                    88.00,
                  ),
                  width: getSize(
                    88.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      8.00,
                    ),
                  ),
                  alignment: Alignment.topCenter,
                ),
                CustomButton(
                  height: 24,
                  width: 64,
                  text: "lbl_add".tr,
                  variant: ButtonVariant.OutlineBlack900,
                  shape: ButtonShape.RoundedBorder4,
                  padding: ButtonPadding.PaddingAll4,
                  fontStyle: ButtonFontStyle.RobotoBold12,
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
