import 'dart:ui';

extension ColorExtension on Color {
  String get hexCode =>
      "#" + value.toRadixString(16).substring(2).toUpperCase();
}
