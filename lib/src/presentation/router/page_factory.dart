import '../pages/home/home_page.dart';
import 'splash_page.dart';

class PageFactory {
  PageFactory._();

  static HomePage main() {
    return HomePage();
  }

  static SplashPage splash() {
    return SplashPage();
  }
}
