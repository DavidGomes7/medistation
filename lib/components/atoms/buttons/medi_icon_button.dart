import 'package:flutter/material.dart';

class MediIconButton extends StatelessWidget {
  const MediIconButton._({
    required this.icon,
    this.onPressed,
    this.color,
    this.iconSize,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final Color? color;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      iconSize: iconSize,
      icon: Icon(icon, color: color),
    );
  }
}
