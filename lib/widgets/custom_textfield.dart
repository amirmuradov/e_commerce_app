import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final Color baseColor;
  final Color errorColor;
  final TextInputType inputType;
  final TextAlign textAlign;
  final Widget? prefix;
  final TextStyle? textStyle;
  final bool obscureText;
  final BorderRadius borderRadius;
  final List<TextInputFormatter> inputFormatter;
  final Function(String) onChanged;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final bool enabled;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;

  const CustomTextField({
    this.hintStyle,
    this.hint = "",
    required this.controller,
    required this.onChanged,
    this.suffixIcon,
    this.baseColor = Colors.black12,
    this.errorColor = Colors.red,
    this.textAlign = TextAlign.start,
    this.inputFormatter = const [],
    this.prefix,
    this.textStyle,
    this.enabled = true,
    this.inputType = TextInputType.text,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.obscureText = false,
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
  });

  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Color currentColor = Colors.black12;

  @override
  void initState() {
    super.initState();
    currentColor = widget.baseColor;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin,
      child: Container(
        decoration: BoxDecoration(
          color: widget.baseColor,
          borderRadius: widget.borderRadius,
        ),
        child: Padding(
          padding: widget.padding,
          child: Row(
            children: [
              if (widget.prefix != null)
                Row(
                  children: [
                    widget.prefix!,
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              Expanded(
                child: Opacity(
                  opacity: widget.enabled ? 1 : 0.5,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextField(
                        obscureText: widget.obscureText,
                        onChanged: widget.onChanged,
                        enabled: widget.enabled,
                        inputFormatters: widget.inputFormatter,
                        textAlign: widget.textAlign,
                        style: widget.textStyle ??
                            Theme.of(context).textTheme.titleMedium,
                        keyboardType: widget.inputType,
                        controller: widget.controller,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(0),
                            border: InputBorder.none,
                            isDense: true,
                            hintText: widget.hint,
                            hintStyle: widget.hintStyle),
                      ),
                      if (widget.suffixIcon != null)
                        Positioned(
                          right: 0,
                          child: widget.suffixIcon!,
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
