import 'package:flutter/material.dart';
import 'package:vocer/constant/theme.dart';

class HomeTopNavBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeTopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu_sharp),
            color: AppColors.primaryblack),
        backgroundColor: AppColors.white,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90.0),
          bottomRight: Radius.circular(90.0),
        )),
        titleSpacing: 4,
        title: const Text(
          "Home",
          style: TextStyle(
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
