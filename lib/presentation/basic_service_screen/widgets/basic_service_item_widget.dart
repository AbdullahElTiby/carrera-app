import '../controller/basic_service_controller.dart';
import '../models/basic_service_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BasicServiceItemWidget extends StatelessWidget {
  BasicServiceItemWidget(this.basicServiceItemModelObj);

  BasicServiceItemModel basicServiceItemModelObj;

  var controller = Get.find<BasicServiceController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.topRight,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: getMargin(
            left: 214,
            right: 16,
          ),
          color: ColorConstant.whiteA700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Container(
            height: getVerticalSize(
              84.00,
            ),
            width: getHorizontalSize(
              198.00,
            ),
            padding: getPadding(
              all: 10,
            ),
            decoration: AppDecoration.outlineGray5003f.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_gautaum_singh".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoBold14,
                      ),
                      Container(
                        width: getHorizontalSize(
                          169.00,
                        ),
                        margin: getMargin(
                          top: 5,
                        ),
                        child: Text(
                          "msg_the_basic_service".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular10,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgTicket,
                  height: getVerticalSize(
                    6.00,
                  ),
                  width: getHorizontalSize(
                    46.00,
                  ),
                  alignment: Alignment.topRight,
                  margin: getMargin(
                    top: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
