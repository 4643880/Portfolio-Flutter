import 'package:get/get.dart';
import 'package:portfolio_app/view/home_view.dart';
import 'package:portfolio_app/view/testing.dart';

class RouteHelper {
  static const initial = "/";
  static const routeHomeScreen = "/homeScreen";

  static List<GetPage> routes = [
    GetPage(
      name: RouteHelper.initial,
      // page: () => const DropDownMenuForMobileWidget(),
      page: () => const HomeView(),
    ),
    GetPage(
      name: RouteHelper.routeHomeScreen,
      // page: () => const DropDownMenuForMobileWidget(),
      page: () => const HomeView(),
      transitionDuration: const Duration(milliseconds: 400),
      transition: Transition.zoom,
    ),
  ];
}
