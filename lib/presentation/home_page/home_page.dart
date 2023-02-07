import '../home_page/widgets/home_item_widget.dart';
import '../home_page/widgets/sliderads_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'models/sliderads_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_dropdown.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_stack.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdullah_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application1/widgets/custom_search_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          title: Padding(
            padding: getPadding(
              left: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarSubtitle(
                  text: "lbl_hello_abdullah".tr,
                  margin: getMargin(
                    right: 18,
                  ),
                ),
                AppbarDropdown(
                  hintText: "msg_istanbul_turkey".tr,
                  items: controller.homeModelObj.value.dropdownItemList,
                  onTap: (value) {
                    controller.onSelected(value);
                  },
                  margin: getMargin(
                    top: 9,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Container(
              height: getVerticalSize(
                45.00,
              ),
              width: getHorizontalSize(
                46.00,
              ),
              margin: getMargin(
                left: 158,
                top: 5,
                right: 16,
                bottom: 5,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AppbarStack(
                    margin: getMargin(
                      left: 1,
                      top: 1,
                      right: 1,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        45.00,
                      ),
                      width: getHorizontalSize(
                        46.00,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.blueGray100,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            23.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 16,
            top: 10,
            right: 16,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSearchView(
                width: 328,
                focusNode: FocusNode(),
                controller: controller.groupThirteenController,
                hintText: "msg_search_for_a_car".tr,
                suffix: Padding(
                  padding: EdgeInsets.only(
                    right: getHorizontalSize(
                      15.00,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      controller.groupThirteenController.clear;
                    },
                    icon: Icon(
                      Icons.clear,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    40.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Obx(
                  () => CarouselSlider.builder(
                    options: CarouselOptions(
                      height: getVerticalSize(
                        120.00,
                      ),
                      initialPage: 0,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        controller.silderIndex.value = index;
                      },
                    ),
                    itemCount:
                        controller.homeModelObj.value.slideradsItemList.length,
                    itemBuilder: (context, index, realIndex) {
                      SlideradsItemModel model = controller
                          .homeModelObj.value.slideradsItemList[index];
                      return SlideradsItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Obx(
                  () => Container(
                    height: getVerticalSize(
                      8.00,
                    ),
                    margin: getMargin(
                      top: 10,
                    ),
                    child: AnimatedSmoothIndicator(
                      activeIndex: controller.silderIndex.value,
                      count: controller
                          .homeModelObj.value.slideradsItemList.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 4,
                        activeDotColor: ColorConstant.gray800,
                        dotColor: ColorConstant.gray600,
                        dotHeight: getVerticalSize(
                          6.00,
                        ),
                        dotWidth: getHorizontalSize(
                          6.00,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                ),
                child: Text(
                  "lbl_select_service".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoBold16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: getPadding(
                        left: 18,
                        top: 7,
                        right: 18,
                        bottom: 7,
                      ),
                      decoration: AppDecoration.outlineBluegray4003f.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgCar,
                            height: getSize(
                              32.00,
                            ),
                            width: getSize(
                              32.00,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: getHorizontalSize(
                                34.00,
                              ),
                              child: Text(
                                "lbl_car_service".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtRobotoMedium10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: getPadding(
                        left: 9,
                        top: 7,
                        right: 9,
                        bottom: 7,
                      ),
                      decoration: AppDecoration.outlineBluegray4003f.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgGroup309,
                            height: getSize(
                              32.00,
                            ),
                            width: getSize(
                              32.00,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              51.00,
                            ),
                            child: Text(
                              "msg_tyres_wheel_care".tr,
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
                        left: 13,
                        top: 5,
                        right: 13,
                        bottom: 5,
                      ),
                      decoration: AppDecoration.outlineBluegray4003f.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgCarBlack900,
                            height: getSize(
                              32.00,
                            ),
                            width: getSize(
                              32.00,
                            ),
                            margin: getMargin(
                              top: 2,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              44.00,
                            ),
                            child: Text(
                              "msg_denting_painting".tr,
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
                          CustomImageView(
                            svgPath: ImageConstant.imgGroup312,
                            height: getSize(
                              32.00,
                            ),
                            width: getSize(
                              32.00,
                            ),
                            margin: getMargin(
                              top: 2,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              49.00,
                            ),
                            child: Text(
                              "msg_ac_service_repair".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRobotoMedium10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          16.00,
                        ),
                      );
                    },
                    itemCount:
                        controller.homeModelObj.value.homeItemList.length,
                    itemBuilder: (context, index) {
                      HomeItemModel model =
                          controller.homeModelObj.value.homeItemList[index];
                      return HomeItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
