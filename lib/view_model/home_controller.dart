import 'package:get/get.dart';
import 'package:portfolio_app/components/language_img_text.dart';
import 'package:portfolio_app/view/home_view.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 3.obs;

  final List<String> tabs = [
    'About Me',
    'Skills',
    'Portfolio',
    'Contact Me',
  ];

  List<LanguageWidget> usingNowList = [
    const LanguageWidget(text: "html", img: "assets/images/html.png"),
    const LanguageWidget(text: "css", img: "assets/images/css.png"),
    const LanguageWidget(text: "sass", img: "assets/images/sass.png"),
    const LanguageWidget(text: "javascript", img: "assets/images/js.png"),
    const LanguageWidget(text: "react", img: "assets/images/react.png"),
    const LanguageWidget(text: "bootstrap", img: "assets/images/bootstrap.png"),
    const LanguageWidget(text: "git", img: "assets/images/git.png"),
    const LanguageWidget(text: "figma", img: "assets/images/figma.png"),
  ];

  List<LanguageWidget> learningList = [
    const LanguageWidget(text: "node js", img: "assets/images/javascript.png"),
    const LanguageWidget(text: "mysql", img: "assets/images/mysql.png"),
    const LanguageWidget(text: "mongo db", img: "assets/images/mongo.png"),
    const LanguageWidget(text: "type script", img: "assets/images/ts.png"),
  ];

  List<String> portfolioList = [
    "assets/images/11.png",
    "assets/images/44.png",
    "assets/images/66.png",
    "assets/images/44.png",
    "assets/images/55.png",
    "assets/images/11.png",
  ];

  List<LanguageWidget> otherList = [
    const LanguageWidget(
      text: "angielski \n c1/c2",
      img: "assets/images/angi.png",
    ),
    const LanguageWidget(
      text: "hiszpanski \n b1/b2 ",
      img: "assets/images/angi2.png",
    ),
    const LanguageWidget(
      text: "c++",
      img: "assets/images/cpp.png",
    ),
    const LanguageWidget(
      text: "c",
      img: "assets/images/c.png",
    ),
  ];
}
