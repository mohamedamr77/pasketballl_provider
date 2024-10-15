import 'package:basketsballprovider/core/extenstion/screen_size.dart';
import 'package:basketsballprovider/core/utils/app_color.dart';
import 'package:basketsballprovider/feature/home/presentation/view/widgets/home_body.dart';
import 'package:basketsballprovider/feature/home/presentation/view/widgets/reset_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Scaffold(
        body: const HomeBody(),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            textAlign: TextAlign.center,
            "Points Counter",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 0.06.w,
                color: AppColor.whiteColor),
          ),
        ),
      ),
      Positioned(bottom: 0.15.h, child: const ResetButton()),
    ]);
  }
}
