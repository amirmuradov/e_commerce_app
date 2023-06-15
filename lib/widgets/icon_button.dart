import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    Key? key,
    required this.padding,
    required this.borderSide,
    this.height = 60,
    required this.icon,
    required this.margin,
    required this.width,
  }) : super(key: key);

  final EdgeInsets? padding;
  final double height;
  final double width;
  final BorderSide borderSide;
  final Widget? icon;
  final EdgeInsets margin;

  @override
  _CustomIconButtonState createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding!,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: widget.borderSide.color,
            width: widget.borderSide.width,
          ),
        ),
        child: widget.icon,
      ),
    );
  }
}
