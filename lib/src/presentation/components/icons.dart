part of 'components.dart';

class AppIcons {
  AppIcons._();

  static const Size _defaultSize = const Size(32, 32);
  static const Color _defaultColor = Colors.white;

  static Widget home({Size size = _defaultSize, Color color = _defaultColor}) {
    return _createSVGWidgetFromPath("assets/icons/home.svg", size, color);
  }

  static Widget _createSVGWidgetFromPath(String path, Size size, Color color) {
    return SvgPicture.asset(
      path,
      width: size.width,
      height: size.height,
      color: color,
    );
  }
}
