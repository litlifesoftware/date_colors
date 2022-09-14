import 'dart:ui';

extension ColorExtension on Color {
  String get hexCode24 =>
      "#" + value.toRadixString(16).substring(2).toUpperCase();
  String get hexCode32 => "#" + value.toRadixString(16).toUpperCase();
}
