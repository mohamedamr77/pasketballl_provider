import 'package:basketsballprovider/feature/home/presentation/view/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
      appBar: AppBar(
        title: Text("Points Counter", style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
