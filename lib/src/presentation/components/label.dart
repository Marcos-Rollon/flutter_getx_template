part of 'components.dart';

class Label extends StatelessWidget {
  final LabelType type;
  final String text;
  final int maxLines;
  final double minFontSize;
  final TextAlign align;

  const Label(
    this.text, {
    this.type = LabelType.plain,
    this.maxLines = 1,
    this.minFontSize = 12,
    this.align = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      this.text,
      style: type.value,
      maxLines: maxLines,
      minFontSize: minFontSize,
      textAlign: align,
    );
  }
}

enum LabelType {
  title,
  whiteTitle,
  whiteH1,
  whiteH2,
  whiteH3,
  mainColorH1,
  mainColorH2,
  mainColorH3,
  mainColorPlain,
  plain,
  light,
}

extension TypeValues on LabelType {
  TextStyle get value {
    switch (this) {
      case LabelType.title:
        return _title;
      case LabelType.mainColorH1:
        return _mainColorH1;
      case LabelType.mainColorH2:
        return _mainColorH2;
      case LabelType.mainColorH3:
        return _mainColorH3;
      case LabelType.mainColorPlain:
        return _mainColorPlain;
      case LabelType.plain:
        return _plain;
      case LabelType.light:
        return _light;
      case LabelType.whiteTitle:
        return _whiteTitle;
      case LabelType.whiteH1:
        return _whiteH1;
      case LabelType.whiteH2:
        return _whiteH2;
      case LabelType.whiteH3:
        return _whiteH3;
    }
  }
}

const TextStyle _title = TextStyle(
  fontSize: 46,
  color: Colors.white,
  fontWeight: FontWeight.w700,
);

const TextStyle _whiteTitle = TextStyle(
  fontSize: 46,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const TextStyle _whiteH1 = TextStyle(
  fontSize: 28,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const TextStyle _whiteH2 = TextStyle(
  fontSize: 23,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const TextStyle _whiteH3 = TextStyle(
  fontSize: 23,
  color: Colors.white,
);

const TextStyle _mainColorH1 = TextStyle(
  fontSize: 28,
  color: AppColors.mainColor,
  fontWeight: FontWeight.bold,
);

const TextStyle _mainColorH2 = TextStyle(
  fontSize: 23,
  color: AppColors.mainColor,
  fontWeight: FontWeight.bold,
);

const TextStyle _mainColorH3 = TextStyle(
  fontSize: 23,
  color: AppColors.mainColor,
);

const TextStyle _mainColorPlain = TextStyle(
  fontSize: 14,
  color: AppColors.mainColor,
);
const TextStyle _plain = TextStyle(
  fontSize: 14,
  color: Colors.white,
);
const TextStyle _light = TextStyle(
  fontSize: 14,
  color: Colors.white,
  fontWeight: FontWeight.w200,
);
