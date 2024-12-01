import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class MediProgressIndicator extends StatelessWidget {
  const MediProgressIndicator._({this.color});

  const MediProgressIndicator.primary(
    Color? color,
  ) : this._(color: color ?? MediColors.primary);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color,
    );
  }
}
