import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarDropdown1 extends StatelessWidget {
  AppbarDropdown1(
      {required this.hintText,
      required this.items,
      required this.onTap,
      this.margin});

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 128,
        focusNode: FocusNode(),
        icon: Container(
          margin: getMargin(
            left: 4,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowdown,
          ),
        ),
        hintText: "msg_istanbul_turkey".tr,
        fontStyle: DropDownFontStyle.RobotoBold16,
        items: items,
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}
