import '../controller/ongoing_controller.dart';
import '../models/ongoing_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OngoingItemWidget extends StatelessWidget {
  OngoingItemWidget(this.ongoingItemModelObj);

  OngoingItemModel ongoingItemModelObj;

  var controller = Get.find<OngoingController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: getPadding(
            left: 10,
            top: 5,
            right: 10,
            bottom: 5,
          ),
          decoration: AppDecoration.outlineBluegray4003f.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getVerticalSize(
                  32.00,
                ),
                width: getHorizontalSize(
                  33.00,
                ),
                margin: getMargin(
                  top: 2,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCarBlack90032x32,
                      height: getSize(
                        32.00,
                      ),
                      width: getSize(
                        32.00,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgCar3,
                      height: getSize(
                        32.00,
                      ),
                      width: getSize(
                        32.00,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  49.00,
                ),
                child: Text(
                  "msg_car_spa_cleaning".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRobotoMedium10,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: getPadding(
            left: 14,
            top: 8,
            right: 14,
            bottom: 8,
          ),
          decoration: AppDecoration.outlineBluegray4003f.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  32.00,
                ),
                width: getHorizontalSize(
                  33.00,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCarBlack90032x32,
                      height: getSize(
                        32.00,
                      ),
                      width: getSize(
                        32.00,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getSize(
                          32.00,
                        ),
                        width: getSize(
                          32.00,
                        ),
                        padding: getPadding(
                          top: 1,
                          bottom: 1,
                        ),
                        decoration: AppDecoration.fillWhiteA700,
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgCamera,
                              height: getVerticalSize(
                                28.00,
                              ),
                              width: getHorizontalSize(
                                32.00,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgVector2,
                      height: getVerticalSize(
                        12.00,
                      ),
                      width: getHorizontalSize(
                        4.00,
                      ),
                      alignment: Alignment.bottomCenter,
                      margin: getMargin(
                        bottom: 7,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  bottom: 9,
                ),
                child: Text(
                  "lbl_batteries".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium10,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: getPadding(
            left: 12,
            top: 7,
            right: 12,
            bottom: 7,
          ),
          decoration: AppDecoration.outlineBluegray4003f.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  32.00,
                ),
                width: getHorizontalSize(
                  33.00,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCarBlack90032x32,
                      height: getSize(
                        32.00,
                      ),
                      width: getSize(
                        32.00,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getSize(
                          32.00,
                        ),
                        width: getSize(
                          32.00,
                        ),
                        padding: getPadding(
                          left: 1,
                          right: 1,
                        ),
                        decoration: AppDecoration.fillWhiteA700,
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLocation,
                              height: getVerticalSize(
                                32.00,
                              ),
                              width: getHorizontalSize(
                                28.00,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  45.00,
                ),
                child: Text(
                  "msg_insurance_claims".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRobotoMedium10,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: getPadding(
            left: 10,
            top: 5,
            right: 10,
            bottom: 5,
          ),
          decoration: AppDecoration.outlineBluegray4003f.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getVerticalSize(
                  32.00,
                ),
                width: getHorizontalSize(
                  33.00,
                ),
                margin: getMargin(
                  top: 2,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCarBlack90032x32,
                      height: getSize(
                        32.00,
                      ),
                      width: getSize(
                        32.00,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getSize(
                          32.00,
                        ),
                        width: getSize(
                          32.00,
                        ),
                        padding: getPadding(
                          top: 6,
                          bottom: 6,
                        ),
                        decoration: AppDecoration.fillWhiteA700,
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgUpload,
                              height: getVerticalSize(
                                18.00,
                              ),
                              width: getHorizontalSize(
                                32.00,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  50.00,
                ),
                child: Text(
                  "msg_windshield_lights".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRobotoMedium10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
