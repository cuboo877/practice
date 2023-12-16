import 'package:flutter/material.dart';
import 'package:vocer/constant/theme.dart';
import 'package:vocer/page/home.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  Widget _buildDrawerListTile(
      String title, IconData? icon, BuildContext context, Widget navTarget) {
    return ListTile(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomePage())),
      title: Text(
        title,
        style: const TextStyle(
            color: AppColors.primaryblack, fontFamily: "Consolas"),
      ),
      iconColor: AppColors.primaryblack,
      leading: IconButton(
        icon: Icon(icon),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => navTarget)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: AppColors.white),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppBar(
                  backgroundColor: Colors.greenAccent,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  centerTitle: true,
                  title: const Text(
                    "Menu",
                    style: TextStyle(
                        color: AppColors.primaryblack,
                        fontFamily: "Consolas",
                        letterSpacing: 4),
                  ),
                  leading: IconButton(
                    icon: const Icon(
                      Icons.cancel,
                      color: AppColors.primaryblack,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                _buildDrawerListTile(
                    "Home", Icons.home, context, const HomePage()),
                _buildDrawerListTile(
                    "Home", Icons.home, context, const HomePage()),
                _buildDrawerListTile(
                    "Home", Icons.home, context, const HomePage()),
                _buildDrawerListTile(
                    "Home", Icons.home, context, const HomePage()),
                _buildDrawerListTile(
                    "Home", Icons.home, context, const HomePage()),
              ]),
        ));
  }
}
