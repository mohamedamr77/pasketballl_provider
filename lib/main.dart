import 'package:basketsballprovider/core/utils/app_color.dart';
import 'package:basketsballprovider/feature/home/presentation/view/home_screen.dart';
import 'package:basketsballprovider/feature/home/presentation/view_mdoel/provider_team_a.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/utils/const_variables.dart';

void main() {
  runApp( ChangeNotifierProvider(
      create: (BuildContext context) {
        return ProviderTeamA();
      },
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        wd = constraints.maxWidth;
        ht = constraints.maxHeight;
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: AppColor.blueColor),
            scaffoldBackgroundColor: AppColor.bgScaffoldColor,
          ),
          debugShowCheckedModeBanner: false,
          home: const HomeScreen(),
        );
      },
    );
  }
}
