import 'package:flutter/material.dart';

import '../utils/colors.dart';

class IpsIcon extends StatelessWidget {
  final IconData icon;
  Color color;

  IpsIcon(this.icon, this.color = IpsColors.mute);

  @override
  Widget build(BuildContext context) {
    return Icon(
      this.icon,
      color: this.color,
      size: 26,
    );
  }
}
