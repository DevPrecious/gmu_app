import 'package:flutter/material.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget({
    super.key,
    required this.icon,
    required this.color,
    this.onTap,
  });

  final Icon icon;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: icon,
      ),
    );
  }
}
