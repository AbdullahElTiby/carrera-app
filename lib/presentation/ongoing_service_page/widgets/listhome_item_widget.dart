import '../controller/ongoing_service_controller.dart';
import '../models/listhome_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListhomeItemWidget extends StatelessWidget {
  ListhomeItemWidget(this.listhomeItemModelObj);

  ListhomeItemModel listhomeItemModelObj;

  var controller = Get.find<OngoingServiceController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: getSize(
          48.00,
        ),
        width: getSize(
          48.00,
        ),
        margin: getMargin(
          right: 84,
        ),
        decoration: AppDecoration.fillWhiteA700,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 11,
                  right: 10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgHomeGray400,
                      height: getVerticalSize(
                        24.00,
                      ),
                      width: getHorizontalSize(
                        25.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                      ),
                      child: Text(
                        "lbl_home".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular10Gray400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: getPadding(
                  left: 10,
                  top: 4,
                  right: 10,
                  bottom: 4,
                ),
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgHomeGray400,
                      height: getVerticalSize(
                        24.00,
                      ),
                      width: getHorizontalSize(
                        25.00,
                      ),
                      alignment: Alignment.centerRight,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "lbl_home".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular10Gray400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
