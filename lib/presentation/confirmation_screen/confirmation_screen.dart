import 'controller/confirmation_controller.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends GetWidget<ConfirmationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 39,
            top: 78,
            right: 39,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgUndraworderco,
                height: getVerticalSize(
                  120.00,
                ),
                width: getHorizontalSize(
                  159.00,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 49,
                ),
                child: Text(
                  "msg_order_was_placed".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoBold16Black900,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  282.00,
                ),
                margin: getMargin(
                  top: 22,
                ),
                child: Text(
                  "msg_we_ve_received_your".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsRegular14,
                ),
              ),
              CustomButton(
                height: 32,
                width: 214,
                text: "lbl_go_to_home".tr,
                margin: getMargin(
                  top: 46,
                  bottom: 5,
                ),
                variant: ButtonVariant.OutlineBlack900_1,
                shape: ButtonShape.RoundedBorder4,
                padding: ButtonPadding.PaddingAll7,
                fontStyle: ButtonFontStyle.RobotoBold14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
