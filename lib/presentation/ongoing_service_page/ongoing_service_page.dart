import '../ongoing_service_page/widgets/listbasicservice_item_widget.dart';
import '../ongoing_service_page/widgets/listhome_item_widget.dart';
import 'controller/ongoing_service_controller.dart';
import 'models/listbasicservice_item_model.dart';
import 'models/listhome_item_model.dart';
import 'models/ongoing_service_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_dropdown_1.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_stack.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdullah_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdullah_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OngoingServicePage extends StatelessWidget {
  OngoingServiceController controller =
      Get.put(OngoingServiceController(OngoingServiceModel().obs));

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
                  items:
                      controller.ongoingServiceModelObj.value.dropdownItemList,
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
                          variant: ButtonVariant.OutlineBlack900_4,
                          shape: ButtonShape.CustomBorderTL8,
                          padding: ButtonPadding.PaddingAll7,
                          fontStyle: ButtonFontStyle.RobotoBold14Black900,
                        ),
                        CustomButton(
                          height: 32,
                          width: 163,
                          text: "lbl_past".tr,
                          variant: ButtonVariant.OutlineGray500,
                          shape: ButtonShape.CustomBorderLR8,
                          padding: ButtonPadding.PaddingAll7,
                          fontStyle: ButtonFontStyle.RobotoBold14Gray600,
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
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              16.00,
                            ),
                          );
                        },
                        itemCount: controller.ongoingServiceModelObj.value
                            .listbasicserviceItemList.length,
                        itemBuilder: (context, index) {
                          ListbasicserviceItemModel model = controller
                              .ongoingServiceModelObj
                              .value
                              .listbasicserviceItemList[index];
                          return ListbasicserviceItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      50.00,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        padding: getPadding(
                          left: 8,
                          top: 2,
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
                        itemCount: controller.ongoingServiceModelObj.value
                            .listhomeItemList.length,
                        itemBuilder: (context, index) {
                          ListhomeItemModel model = controller
                              .ongoingServiceModelObj
                              .value
                              .listhomeItemList[index];
                          return ListhomeItemWidget(
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
      ),
    );
  }
}
