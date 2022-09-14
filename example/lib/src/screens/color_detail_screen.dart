import 'package:flutter/material.dart';
import 'package:example/extensions.dart';

class ColorDetailScreen extends StatefulWidget {
  final Color color;
  const ColorDetailScreen({
    Key? key,
    required this.color,
  }) : super(key: key);

  static const String title = "Color";

  @override
  State<ColorDetailScreen> createState() => _ColorDetailScreenState();
}

class _ColorDetailScreenState extends State<ColorDetailScreen> {
  TextStyle get _h4 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: Theme.of(context).textTheme.headline4!.fontSize ?? 16.0);

  TextStyle get _h6 => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: Theme.of(context).textTheme.headline6!.fontSize ?? 16.0);

  TextStyle get _body => TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: Theme.of(context).textTheme.bodySmall!.fontSize ?? 12.0);

  int get _aCh => widget.color.alpha;
  int get _rCh => widget.color.red;
  int get _gCh => widget.color.green;
  int get _bCh => widget.color.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color,
      appBar: AppBar(
        title: const Text(ColorDetailScreen.title),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => SizedBox(
          width: constraints.maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              _HexValueIndicator(
                label: "24 Bit",
                labelStyle: _body,
                value: widget.color.hexCode24,
                valueStyle: _h4,
              ),
              _HexValueIndicator(
                label: "32 Bit",
                labelStyle: _body,
                value: widget.color.hexCode32,
                valueStyle: _h4,
              ),
              const SizedBox(height: 16.0),
              Column(
                children: [
                  _ChannelValueIndicator(
                    label: "A",
                    labelStyle: _h6,
                    value: _aCh,
                    valueStyle: _body,
                  ),
                  _ChannelValueIndicator(
                    label: "R",
                    labelStyle: _h6,
                    value: _rCh,
                    valueStyle: _body,
                  ),
                  _ChannelValueIndicator(
                    label: "G",
                    labelStyle: _h6,
                    value: _gCh,
                    valueStyle: _body,
                  ),
                  _ChannelValueIndicator(
                    label: "B",
                    labelStyle: _h6,
                    value: _bCh,
                    valueStyle: _body,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _HexValueIndicator extends StatelessWidget {
  final String label;
  final String value;
  final TextStyle labelStyle;
  final TextStyle valueStyle;
  const _HexValueIndicator(
      {Key? key,
      required this.label,
      required this.value,
      required this.labelStyle,
      required this.valueStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: labelStyle,
        ),
        Text(
          value,
          style: valueStyle,
        ),
      ],
    );
  }
}

class _ChannelValueIndicator extends StatelessWidget {
  final String label;
  final int value;
  final TextStyle labelStyle;
  final TextStyle valueStyle;
  const _ChannelValueIndicator(
      {Key? key,
      required this.label,
      required this.value,
      required this.labelStyle,
      required this.valueStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: labelStyle,
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(value.toString(), style: valueStyle),
      ],
    );
  }
}
