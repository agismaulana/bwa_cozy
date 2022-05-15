import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/models/bottom_navbar.dart';

class BottomNavbarItem extends StatelessWidget {
  final BottomItemNavbar bottomItemNavbar;
  const BottomNavbarItem({ Key? key, required this.bottomItemNavbar }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          bottomItemNavbar.imageUrl,
          width: 26,
          height: 26,
        ),
        const Spacer(),
        bottomItemNavbar.isActive ? Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: purpleColor,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(1000)
            )
          ),
        ) : Container(),
      ],
    );
  }
}