import 'package:flutter/material.dart';
import 'package:gallery/app/responsive/window_type.dart';

class DpiDouble {
  final double? _original;
  final double? dpi;
  final WindowType? type;

  DpiDouble(
    this._original, {
    @required this.dpi,
    @required this.type,
  });

  double get asDouble => this * 1.0;
  double operator *(Object other) {
    /*
    ldpi | mdpi | tvdpi | hdpi | xhdpi | xxhdpi | xxxhdpi
    0.75 | 1    | 1.33  | 1.5  | 2     | 3      | 4
    */
    // if (other == null || this == null) return null;
    if (other is num) {
      var multiplied = type!.index > 4 ? 1.0 : 0.7;
      return _original! * other * multiplied;
    }
    return 0;
    // return null;
  }
}

extension QuerySize on BuildContext {
  static late MediaQueryData _cached;
  static late ThemeData _cachedTheme;

  static ThemeData _themeData(BuildContext? ctx) {
    try {
      if (ctx == null) throw '';
      _cachedTheme = Theme.of(ctx);
    } catch (err) {
      //w(err);
    }
    return _cachedTheme;
  }

  static MediaQueryData _data(BuildContext? ctx) {
    try {
      if (ctx == null) throw '';
      _cached = MediaQuery.of(ctx);
    } catch (err) {
      //e(err);
    }
    return _cached;
  }

  static set context(BuildContext context) {
    _data(context);
    _themeData(context);
  }

  // static BuildContext get context => null;

  double get height => _data(this).size.height;

  double get width => _data(this).size.width;
  double get dpi => _data(this).devicePixelRatio;

  double get aspectRatio => this.height / this.width;
  WindowType get windowType =>
      FromAspectRation.fromAspectRatio(this.aspectRatio);
  DpiDouble get smallerSide => DpiDouble(_data(this).size.shortestSide,
      dpi: this.dpi, type: this.windowType);

  ThemeData get theme => _themeData(this);

  double get mediaQueryFonts =>
      ((WidgetsBinding.instance.window.physicalSize.width) /
          (WidgetsBinding.instance.window.devicePixelRatio)) *
      2.75;
}
