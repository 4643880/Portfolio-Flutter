import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 3.obs;

  final List<String> tabs = [
    'About Me',
    'Skills',
    'Portfolio',
    'Contact Me',
  ];
}
