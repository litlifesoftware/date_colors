import 'package:date_colors/date_colors.dart';
import 'package:example/src/screens/color_detail_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class PickerScreen extends StatelessWidget {
  final DateTime? date;
  final DateColorScheme? scheme;
  const PickerScreen({
    Key? key,
    required this.date,
    required this.scheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return scheme == null
        ? Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
            child: Row(
              children: const [
                Icon(Icons.warning),
                SizedBox(width: 8.0),
                Text(
                  "Please select a date",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          )
        : LayoutBuilder(
            builder: (context, constraints) => Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        _ColorContainer(
                          color: scheme!.colorOfYear,
                          width: constraints.maxWidth / 3,
                          height: 256.0,
                          label: "Color of the Year",
                          transform: true,
                        ),
                        _ColorContainer(
                          color: scheme!.colorOfTheSeason,
                          width: constraints.maxWidth / 3,
                          height: 256.0,
                          label: "Color of the Season",
                          transform: true,
                        ),
                        _ColorContainer(
                          color: scheme!.combinedColor,
                          width: constraints.maxWidth / 3,
                          height: 256.0,
                          label: "Combined",
                          transform: true,
                        ),
                      ],
                    ),
                    _ColorContainer(
                      color: scheme!.uniqueColorOfTheYear,
                      width: constraints.maxWidth,
                      height: 256.0,
                      label: "Unique Date Color",
                    ),
                    _ColorContainer(
                      color: scheme!.uniqueDateColor,
                      width: constraints.maxWidth,
                      height: 256.0,
                      label: "Unique Color of the Year",
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}

class _ColorContainer extends StatefulWidget {
  final double height;
  final double width;
  final Color color;
  final String label;
  final bool transform;

  const _ColorContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    required this.label,
    this.transform = false,
  }) : super(key: key);

  @override
  State<_ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<_ColorContainer> {
  void _onTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ColorDetailScreen(color: widget.color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.color,
        ),
        child: Center(
          child: Transform.rotate(
            angle: widget.transform ? (math.pi / 2.0) * 3.0 : 0.0,
            child: Text(
              widget.label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
