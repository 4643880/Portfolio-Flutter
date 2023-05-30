import 'package:get/get.dart';
import 'package:portfolio_app/view_model/home_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => HomeController());
}
