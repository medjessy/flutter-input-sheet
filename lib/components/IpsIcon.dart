import 'package:flutter/material.dart';

import '../utils/colors.dart';

class IpsIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  IpsIcon(this.icon, this.color);

  @override
  Widget build(BuildContext context) {
    return Icon(
      this.icon,
      color: ths.color ?? IpsColors.mute,
      size: 26,
    );
  }
}
