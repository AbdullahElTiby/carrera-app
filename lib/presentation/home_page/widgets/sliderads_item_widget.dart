import '../controller/home_controller.dart';
import '../models/sliderads_item_model.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SlideradsItemWidget extends StatelessWidget {
  SlideradsItemWidget(this.slideradsItemModelObj);

  SlideradsItemModel slideradsItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 151,
        top: 51,
        right: 151,
        bottom: 51,
      ),
      decoration: AppDecoration.fillBluegray100,
      child: Column(
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
    );
  }
}
