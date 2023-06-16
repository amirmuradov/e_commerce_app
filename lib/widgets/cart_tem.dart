import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem(
      {Key? key,
      this.color,
      this.height = 100,
      this.width = 150,
      required this.text,
      this.style})
      : super(key: key);

  final double width;
  final double height;
  final String text;
  final TextStyle? style;
  final Color? color;

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: widget.color ?? Theme.of(context).secondaryHeaderColor,
      ),
      padding: const EdgeInsets.only(
        bottom: 15,
        left: 15,
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          widget.text,
          style: widget.style ??
              Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontFamily: "NotoSans-Regular",
                  ),
        ),
      ),
    );
  }
}
