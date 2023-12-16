import 'package:flutter/material.dart';
import 'package:vocer/constant/theme.dart';
import 'package:vocer/page/home.dart';

class TopNavBar extends StatelessWidget implements PreferredSizeWidget {
  const TopNavBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: const Icon(Icons.arrow_back_sharp),
            color: AppColors.primaryblack),
        backgroundColor: AppColors.white,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90.0),
          bottomRight: Radius.circular(90.0),
        )),
        titleSpacing: 4,
        title: Text(
          title,
          style: const TextStyle(
              color: AppColors.primaryblack,
              fontSize: 20,
              fontFamily: "Consolas",
              letterSpacing: 4),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
