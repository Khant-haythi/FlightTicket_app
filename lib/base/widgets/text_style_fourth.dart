
import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleFouth extends StatelessWidget {
  final String text;
  const TextStyleFouth({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
    );
  }
}
