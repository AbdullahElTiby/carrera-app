import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarStack extends StatelessWidget {
  AppbarStack({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: ColorConstant.black900,
              width: getHorizontalSize(
                1.00,
              ),
            ),
            borderRadius: BorderRadiusStyle.circleBorder22,
          ),
          child: Container(
            height: getSize(
              44.00,
            ),
            width: getSize(
              44.00,
            ),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder22,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse25,
                  height: getSize(
                    44.00,
                  ),
                  width: getSize(
                    44.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      22.00,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
