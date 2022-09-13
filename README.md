![DateColors Banner][banner]

# DateColors

DateColors is a Flutter package to generate a color scheme based on a date. The
color scheme includes a color for the calendar day and a color for the year.

Consider taking a look into the [manual][manual] for specifications and color
codes.

Visit our [website][website] for more details.

Created and maintained by [LitLifeSoftware][github].

## Features

- Generate a color based on the current year.
- Generate a color based on the season of the current year.
- Generate a combined color based on the current year and the season of the current year.
- Generate an unique color of the current year.
- Generate an unique color based on the date.

| Screenshot 1       | Screenshot 2       | Screenshot 3       |
| ------------------ | ------------------ | ------------------ |
| ![1][screenshot_1] | ![2][screenshot_2] | ![3][screenshot_3] |

## Getting started

For help getting started with Flutter, view Flutter's
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Usage

To use DateColors in your Flutter app make sure to import it by including the
code line `import 'package:date_colors/date_colors.dart';` in the header part
of your `.dart` file.

Create a `DateColorScheme` instance by providing a `DateTime` object.

```dart
DateColorScheme scheme = DateColorScheme(DateTime.now());
```

Access the generated colors by calling the `scheme`'s properties.

```dart
Color color = scheme.colorOfTheSeason;
```

The `/example` folder contains an example app demonstrating how DateColors could be implemented.

## Dependencies

DateColors uses the following Dart dependencies in order to implement certain
features and functionality:

- [crypto][d1_link] - [License][d1_lic] (Creates a hash required to generate unique colors)

## Credits

DateColors is made possible thanks to the Flutter Project.

## License

The source code of this repository is distributed under the
**BSD 3-Clause** license as specified in the `LICENSE` file.

[website]: https://litlifesoftware.github.io
[pub]: https://pub.dev/packages/date_colors
[github]: https://www.github.com/litlifesoftware/
[banner]: assets/img/Banner_Large.png
[screenshot_1]: assets/img/Screenshot_1.png
[screenshot_2]: assets/img/Screenshot_2.png
[screenshot_3]: assets/img/Screenshot_3.png
[manual]: assets/doc/DateColors_Manual.pdf
[badge_pub]: https://img.shields.io/pub/v/date_colors.svg
[d1_link]: https://pub.dev/packages/crypto
[d1_lic]: https://pub.dev/packages/crypto/license
