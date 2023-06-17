import 'package:flutter/material.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({
    Key? key,
    this.height = 150,
    this.width = 70,
    this.color,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(12),
    ),
    this.imageUrl, // Добавляем новое свойство для URL изображения
  }) : super(key: key);

  final double height;
  final double width;
  final BorderRadius borderRadius;
  final Color? color;
  final String? imageUrl;
  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        color: widget.color,
      ),
      child: widget.imageUrl != null
          ? Image.network(
              widget.imageUrl!,
              fit: BoxFit.cover,
            )
          : Container(),
    );
  }
}
