import 'package:basketsballprovider/core/extenstion/screen_size.dart';
import 'package:flutter/material.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      indent: 0.05.h,
      endIndent: 0.3.h,
    );
  }
}
