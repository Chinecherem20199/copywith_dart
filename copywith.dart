enum Color {
  RED,
  BLUE,
  GREEN,
  ORANGE,
  LIGHT_RED,
  LIGHT_BLUE,
  LIGHT_GREEN,
  LIGHT_ORANGE,
}
enum Brightness {
  DART,
  LIGHT,
}

class ThemeData {
  final Color accentColor;
  final Color backgroundColor;
  final Color buttonColor;
  final Brightness brightness;

  ThemeData({
    this.accentColor = Color.LIGHT_ORANGE,
    this.backgroundColor = Color.BLUE,
    this.buttonColor = Color.LIGHT_ORANGE,
    this.brightness = Brightness.LIGHT,
  });

  ThemeData copywith({
    Color? accentColor,
    Color? backgroundColor,
    Color? buttonColor,
    Brightness? brightness,
  }) {
    return ThemeData(
      accentColor: accentColor ?? this.accentColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  String toString() {
    return '''
AccentColor: $accentColor
BackgroudColor: $backgroundColor
ButtonColor: $buttonColor
Brightness: $brightness

''';
  }
}

void main() {
  var theme = ThemeData();
  var theme2 = theme.copywith();
  print(theme2);
}
