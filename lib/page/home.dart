import 'package:flutter/material.dart';
import 'package:vocer/constant/theme.dart';
import 'package:vocer/widget/homeappbar.dart';
import 'package:vocer/widget/navdrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeTopNavBar(),
      backgroundColor: AppColors.primaryblack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      drawer: NavDrawer(),
    );
  }
}
