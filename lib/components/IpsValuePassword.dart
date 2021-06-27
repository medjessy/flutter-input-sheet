import 'package:flutter/material.dart';

import '../utils/colors.dart';

class IpsValuePassword extends StatelessWidget {
  final String value;

  IpsValuePassword(this.value);

  @override
  Widget build(BuildContext context) {
    return Text(
      "*" * this.value.length,
      style: TextStyle(
        color: IpsColors.dark,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        fontSize: 16,
      ),
    );
  }
}
