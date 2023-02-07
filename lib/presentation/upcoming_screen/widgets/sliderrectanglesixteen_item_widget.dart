import '../controller/upcoming_controller.dart';
import '../models/sliderrectanglesixteen_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderrectanglesixteenItemWidget extends StatelessWidget {
  SliderrectanglesixteenItemWidget(this.sliderrectanglesixteenItemModelObj);

  SliderrectanglesixteenItemModel sliderrectanglesixteenItemModelObj;

  var controller = Get.find<UpcomingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        120.00,
      ),
      width: getHorizontalSize(
        328.00,
      ),
      decoration: AppDecoration.outlineGray4003f,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle16,
            height: getVerticalSize(
              120.00,
            ),
            width: getHorizontalSize(
              328.00,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: getPadding(
                left: 151,
                top: 51,
                right: 151,
                bottom: 51,
              ),
              decoration: AppDecoration.fillBluegray100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_ads".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
