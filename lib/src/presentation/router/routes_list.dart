import 'package:get/get.dart';
import 'bindings/page_bindings.dart';
import 'page_factory.dart';

class RoutesList {
  RoutesList._();

  static List<GetPage> generate() {
    return [
      GetPage(name: ROUTES.splash, page: () => PageFactory.splash()),
      GetPage(
        name: ROUTES.home,
        page: () => PageFactory.main(),
        binding: HomePageBinding(),
      ),
    ];
  }
}

class ROUTES {
  ROUTES._();
  static String splash = "/";
  static String home = "/home";
}
