import '../past_service_screen/widgets/past_service_item_widget.dart';
import 'controller/past_service_controller.dart';
import 'models/past_service_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/presentation/home_page/home_page.dart';
import 'package:abdullah_s_application1/presentation/ongoing_service_page/ongoing_service_page.dart';
import 'package:abdullah_s_application1/presentation/vehicle_page/vehicle_page.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_dropdown_1.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_stack.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdullah_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application1/widgets/custom_bottom_bar.dart';
import 'package:abdullah_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PastServiceScreen extends GetWidget<PastServiceController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
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
                AppbarTitle(
                  text: "lbl_hello_abdullah".tr,
                  margin: getMargin(
                    right: 24,
                  ),
                ),
                AppbarDropdown1(
                  hintText: "msg_istanbul_turkey".tr,
                  items: controller.pastServiceModelObj.value.dropdownItemList,
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
                left: 154,
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
            child: Padding(
              padding: getPadding(
                left: 16,
                top: 19,
                right: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: AppDecoration.outlineGray40003.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          height: 32,
                          width: 166,
                          text: "lbl_upcoming2".tr,
                          variant: ButtonVariant.OutlineGray40003,
                          shape: ButtonShape.CustomBorderTL8,
                          padding: ButtonPadding.PaddingAll7,
                          fontStyle: ButtonFontStyle.RobotoBold14Gray600,
                        ),
                        CustomButton(
                          height: 32,
                          width: 163,
                          text: "lbl_past".tr,
                          variant: ButtonVariant.OutlineBlack900_4,
                          shape: ButtonShape.CustomBorderLR8,
                          padding: ButtonPadding.PaddingAll7,
                          fontStyle: ButtonFontStyle.RobotoBold14Black900,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      328.00,
                    ),
                    margin: getMargin(
                      top: 16,
                    ),
                    padding: getPadding(
                      top: 11,
                      bottom: 11,
                    ),
                    decoration: AppDecoration.outlineGray5003f.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              top: 4,
                              right: 15,
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
                                    69.00,
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
                                  decoration: AppDecoration.txtOutlineGreenA700
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.txtRoundedBorder4,
                                  ),
                                  child: Text(
                                    "lbl_completed".tr,
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
                          ),
                          child: Text(
                            "lbl_general_motoegy".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoBold16,
                          ),
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
                            left: 16,
                            top: 2,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 7,
                          ),
                          child: Text(
                            "lbl_date".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoBold12Gray600,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                          ),
                          child: Text(
                            "msg_9th_jan_2023_monday".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular12Gray600,
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
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 10,
                            ),
                            child: Text(
                              "lbl_book_again".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoBold14Black900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      278.00,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        padding: getPadding(
                          left: 8,
                          top: 230,
                          right: 8,
                        ),
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              84.00,
                            ),
                          );
                        },
                        itemCount: controller.pastServiceModelObj.value
                            .pastServiceItemList.length,
                        itemBuilder: (context, index) {
                          PastServiceItemModel model = controller
                              .pastServiceModelObj
                              .value
                              .pastServiceItemList[index];
                          return PastServiceItemWidget(
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
