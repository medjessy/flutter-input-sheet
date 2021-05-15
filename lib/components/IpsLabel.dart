import 'package:flutter/material.dart';

import '../utils/colors.dart';

class IpsLabel extends StatelessWidget {
  final String value;
  final Color color;

  IpsLabel({@required this.value, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.value,
      style: TextStyle(
        color: this.color ?? IpsColors.mute,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        fontSize: 12,
      ),
    );
  }
}
