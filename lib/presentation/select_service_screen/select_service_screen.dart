import '../select_service_screen/widgets/select_service_item_widget.dart';
import 'controller/select_service_controller.dart';
import 'models/select_service_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:abdullah_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdullah_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SelectServiceScreen extends GetWidget<SelectServiceController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(24.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: onTapArrowleft),
                title: AppbarSubtitle(
                    text: "lbl_car_service2".tr, margin: getMargin(left: 8))),
            body: Padding(
                padding: getPadding(left: 16, top: 16, right: 16),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16.00));
                    },
                    itemCount: controller.selectServiceModelObj.value
                        .selectServiceItemList.length,
                    itemBuilder: (context, index) {
                      SelectServiceItemModel model = controller
                          .selectServiceModelObj
                          .value
                          .selectServiceItemList[index];
                      return SelectServiceItemWidget(model);
                    })))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
