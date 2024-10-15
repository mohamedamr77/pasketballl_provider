import 'package:auto_size_text/auto_size_text.dart';
import 'package:basketsballprovider/core/extenstion/screen_size.dart';
import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({super.key, required this.score});
  final int score;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.04.h),
      child: SizedBox(
        width: 0.4.w,
        child: AutoSizeText(
          '$score',
          style: TextStyle(
            fontSize: 0.2.w,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          minFontSize: 10,
          // Allow the text to shrink if needed
          overflow: TextOverflow.ellipsis, // Add this to handle overflow
        ),
      ),
    );
  }
}
