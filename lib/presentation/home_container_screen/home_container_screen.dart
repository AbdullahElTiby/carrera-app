import 'controller/home_container_controller.dart';
import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/presentation/home_page/home_page.dart';
import 'package:abdullah_s_application1/presentation/ongoing_service_page/ongoing_service_page.dart';
import 'package:abdullah_s_application1/presentation/vehicle_page/vehicle_page.dart';
import 'package:abdullah_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

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
