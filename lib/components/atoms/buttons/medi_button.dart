import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

enum MediButtonType {
  primary,
  google,
}

class MediButton extends StatelessWidget {
  const MediButton._({
    required this.type,
    required this.label,
    this.textStyle,
    required this.onPressed,
  });

  factory MediButton.primary({
    required String label,
    TextStyle? textStyle,
    required void Function() onPressed,
  }) {
    return MediButton._(
      type: MediButtonType.primary,
      label: label,
      textStyle: textStyle ?? const TextStyle(color: MediColors.textSecondary),
      onPressed: onPressed,
    );
  }

  factory MediButton.google({
    required String label,
    TextStyle? textStyle,
    required void Function() onPressed,
  }) {
    return MediButton._(
      type: MediButtonType.google,
      label: label,
      textStyle: textStyle ?? const TextStyle(color: MediColors.textSecondary),
      onPressed: onPressed,
    );
  }

  final MediButtonType type;
  final String label;
  final TextStyle? textStyle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      MediButtonType.primary => ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: MediColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: textStyle,
          ),
          child: Text(
            label,
            style: textStyle,
          ),
        ),
      MediButtonType.google => ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/google.png',
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  label,
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
    };
  }
}
