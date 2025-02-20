extension FromAspectRation on WindowType {
  static WindowType fromAspectRatio(double aspectRatio) {
    if (aspectRatio < 7 / 16) return WindowType.landscapeSmall;
    if (aspectRatio >= 7 / 16 && aspectRatio < 11 / 16)
      return WindowType.landscape;
    if (aspectRatio >= 11 / 16 && aspectRatio < 14 / 16)
      return WindowType.landscapeTall;
    if (aspectRatio >= 14 / 16 && aspectRatio < 18 / 16)
      return WindowType.square;
    if (aspectRatio >= 18 / 16 && aspectRatio < 26 / 16)
      return WindowType.portraitSmall;
    if (aspectRatio >= 26 / 16 && aspectRatio < 30 / 16)
      return WindowType.portrait;
    if (aspectRatio >= 30 / 16) return WindowType.portraitTall;
    return WindowType.portraitTall;
  }

  bool get isLandscape => this.index < 3;
  bool get isPortrait => this.index > 3;
  bool get isportraitSmall => this.index == 4;
  bool get isSquare => this.index == 3;

  bool isInRange(int first, int last) =>
      this.index >= first && this.index < last;
}

///Give us window type based on aspect ratio (height / width)
enum WindowType {
  ///lower than 7:16
  landscapeSmall,

  ///between than 7:16 and 11:16
  landscape,

  ///between than 11:16 and 14:16
  landscapeTall,

  ///between than 14:16 and 18:16
  square,

  ///between than 18:16 and 26:16
  portraitSmall,

  ///between than 26:16 and 30:16
  portrait,

  ///more than 30:16
  portraitTall,
}
