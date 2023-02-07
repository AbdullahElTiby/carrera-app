import '../upcoming_screen/widgets/sliderrectanglesixteen_item_widget.dart';
import '../upcoming_screen/widgets/upcoming_item_widget.dart';
import 'controller/upcoming_controller.dart';
import 'models/sliderrectanglesixteen_item_model.dart';
import 'models/upcoming_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/presentation/home_page/home_page.dart';
import 'package:abdullah_s_application1/presentation/ongoing_service_page/ongoing_service_page.dart';
import 'package:abdullah_s_application1/presentation/vehicle_page/vehicle_page.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_dropdown.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_stack.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdullah_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application1/widgets/custom_bottom_bar.dart';
import 'package:abdullah_s_application1/widgets/custom_search_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UpcomingScreen extends GetWidget<UpcomingController> {
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
            45.00,
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
                  items: controller.upcomingModelObj.value.dropdownItemList,
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
                right: 16,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AppbarStack(
                    margin: getMargin(
                      left: 1,
                      right: 1,
                      bottom: 1,
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
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              margin: getMargin(
                top: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSearchView(
                    width: 328,
                    focusNode: FocusNode(),
                    controller: controller.groupFortyOneController,
                    hintText: "msg_search_for_a_car2".tr,
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          15.00,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          controller.groupFortyOneController.clear;
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
                      top: 11,
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
                        itemCount: controller.upcomingModelObj.value
                            .sliderrectanglesixteenItemList.length,
                        itemBuilder: (context, index, realIndex) {
                          SliderrectanglesixteenItemModel model = controller
                              .upcomingModelObj
                              .value
                              .sliderrectanglesixteenItemList[index];
                          return SliderrectanglesixteenItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Obx(
                    () => Container(
                      height: getVerticalSize(
                        8.00,
                      ),
                      margin: getMargin(
                        top: 8,
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.silderIndex.value,
                        count: controller.upcomingModelObj.value
                            .sliderrectanglesixteenItemList.length,
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 13,
                      ),
                      child: Text(
                        "lbl_select_service".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoBold16,
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      259.00,
                    ),
                    width: size.width,
                    margin: getMargin(
                      top: 15,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              right: 16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: getPadding(
                                        left: 18,
                                        top: 7,
                                        right: 18,
                                        bottom: 7,
                                      ),
                                      decoration: AppDecoration
                                          .outlineBluegray4003f
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCarBlack90032x32,
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
                                                style:
                                                    AppStyle.txtRobotoMedium10,
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
                                      decoration: AppDecoration
                                          .outlineBluegray4003f
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                      decoration: AppDecoration
                                          .outlineBluegray4003f
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCarBlack900,
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
                                      decoration: AppDecoration
                                          .outlineBluegray4003f
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                Padding(
                                  padding: getPadding(
                                    top: 16,
                                  ),
                                  child: Obx(
                                    () => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: getVerticalSize(
                                            16.00,
                                          ),
                                        );
                                      },
                                      itemCount: controller.upcomingModelObj
                                          .value.upcomingItemList.length,
                                      itemBuilder: (context, index) {
                                        UpcomingItemModel model = controller
                                            .upcomingModelObj
                                            .value
                                            .upcomingItemList[index];
                                        return UpcomingItemWidget(
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
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: size.width,
                            margin: getMargin(
                              top: 219,
                            ),
                            padding: getPadding(
                              left: 16,
                              top: 10,
                              right: 16,
                              bottom: 10,
                            ),
                            decoration: AppDecoration.fillBlue50,
                            child: Row(
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_upcoming".tr,
                                          style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " ",
                                          style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "lbl_basic_service".tr,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 4,
                                    top: 3,
                                    right: 66,
                                  ),
                                  child: Text(
                                    "msg_today_9_00_9_30".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: getPadding(
                            left: 10,
                            top: 4,
                            right: 10,
                            bottom: 4,
                          ),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgHome,
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
                                    style: AppStyle.txtRobotoBold10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: getPadding(
                            all: 4,
                          ),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCalculator,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                ),
                                child: Text(
                                  "lbl_vehicles".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold10Gray400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: getPadding(
                            left: 5,
                            top: 4,
                            right: 5,
                            bottom: 4,
                          ),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgFileBlack900,
                                height: getVerticalSize(
                                  24.00,
                                ),
                                width: getHorizontalSize(
                                  22.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                ),
                                child: Text(
                                  "lbl_records".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold10Gray400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Vehicles:
        return AppRoutes.vehiclePage;
      case BottomBarEnum.Locateme:
        return "/";
      case BottomBarEnum.Records:
        return AppRoutes.ongoingServicePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.vehiclePage:
        return VehiclePage();
      case AppRoutes.ongoingServicePage:
        return OngoingServicePage();
      default:
        return DefaultWidget();
    }
  }
}
