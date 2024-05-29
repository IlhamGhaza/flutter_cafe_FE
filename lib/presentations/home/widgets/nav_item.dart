import 'package:flutter/material.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_svg/svg.dart';

class NavItem extends StatelessWidget {
  final String iconPath;
  final bool isActive;
  final VoidCallback onTap;
  final Color color;

  const NavItem({
    super.key,
    required this.iconPath,
    required this.isActive,
    required this.onTap,
    this.color = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: AppColors.shadow.withOpacity(0.8),
                      spreadRadius: 2,
                      blurRadius: 11,
                      offset: Offset(2, 2),
                      blurStyle: BlurStyle.normal, // changes position of shadow
                    ),
                  ]
                : [],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            child: ColoredBox(
              color: isActive ? AppColors.primary : Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 25.0,
                      height: 25.0,
                      child: SvgPicture.asset(
                        iconPath,
                        color: isActive ? AppColors.white : AppColors.nonactive,
                        // colorFilter: ColorFilter.mode(
                        //   color,
                        //   BlendMode.srcIn,
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
