import 'package:abdullah_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:abdullah_s_application1/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:abdullah_s_application1/presentation/select_service_screen/select_service_screen.dart';
import 'package:abdullah_s_application1/presentation/select_service_screen/binding/select_service_binding.dart';
import 'package:abdullah_s_application1/presentation/basic_service_screen/basic_service_screen.dart';
import 'package:abdullah_s_application1/presentation/basic_service_screen/binding/basic_service_binding.dart';
import 'package:abdullah_s_application1/presentation/checkout_screen/checkout_screen.dart';
import 'package:abdullah_s_application1/presentation/checkout_screen/binding/checkout_binding.dart';
import 'package:abdullah_s_application1/presentation/checkout_address_added_screen/checkout_address_added_screen.dart';
import 'package:abdullah_s_application1/presentation/checkout_address_added_screen/binding/checkout_address_added_binding.dart';
import 'package:abdullah_s_application1/presentation/payment_screen/payment_screen.dart';
import 'package:abdullah_s_application1/presentation/payment_screen/binding/payment_binding.dart';
import 'package:abdullah_s_application1/presentation/confirmation_screen/confirmation_screen.dart';
import 'package:abdullah_s_application1/presentation/confirmation_screen/binding/confirmation_binding.dart';
import 'package:abdullah_s_application1/presentation/upcoming_screen/upcoming_screen.dart';
import 'package:abdullah_s_application1/presentation/upcoming_screen/binding/upcoming_binding.dart';
import 'package:abdullah_s_application1/presentation/ongoing_screen/ongoing_screen.dart';
import 'package:abdullah_s_application1/presentation/ongoing_screen/binding/ongoing_binding.dart';
import 'package:abdullah_s_application1/presentation/past_service_screen/past_service_screen.dart';
import 'package:abdullah_s_application1/presentation/past_service_screen/binding/past_service_binding.dart';
import 'package:abdullah_s_application1/presentation/track_screen/track_screen.dart';
import 'package:abdullah_s_application1/presentation/track_screen/binding/track_binding.dart';
import 'package:abdullah_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:abdullah_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String selectServiceScreen = '/select_service_screen';

  static const String basicServiceScreen = '/basic_service_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String checkoutAddressAddedScreen =
      '/checkout_address_added_screen';

  static const String paymentScreen = '/payment_screen';

  static const String confirmationScreen = '/confirmation_screen';

  static const String upcomingScreen = '/upcoming_screen';

  static const String ongoingScreen = '/ongoing_screen';

  static const String vehiclePage = '/vehicle_page';

  static const String ongoingServicePage = '/ongoing_service_page';

  static const String pastServiceScreen = '/past_service_screen';

  static const String trackScreen = '/track_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: selectServiceScreen,
      page: () => SelectServiceScreen(),
      bindings: [
        SelectServiceBinding(),
      ],
    ),
    GetPage(
      name: basicServiceScreen,
      page: () => BasicServiceScreen(),
      bindings: [
        BasicServiceBinding(),
      ],
    ),
    GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
      bindings: [
        CheckoutBinding(),
      ],
    ),
    GetPage(
      name: checkoutAddressAddedScreen,
      page: () => CheckoutAddressAddedScreen(),
      bindings: [
        CheckoutAddressAddedBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: confirmationScreen,
      page: () => ConfirmationScreen(),
      bindings: [
        ConfirmationBinding(),
      ],
    ),
    GetPage(
      name: upcomingScreen,
      page: () => UpcomingScreen(),
      bindings: [
        UpcomingBinding(),
      ],
    ),
    GetPage(
      name: ongoingScreen,
      page: () => OngoingScreen(),
      bindings: [
        OngoingBinding(),
      ],
    ),
    GetPage(
      name: pastServiceScreen,
      page: () => PastServiceScreen(),
      bindings: [
        PastServiceBinding(),
      ],
    ),
    GetPage(
      name: trackScreen,
      page: () => TrackScreen(),
      bindings: [
        TrackBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    )
  ];
}
