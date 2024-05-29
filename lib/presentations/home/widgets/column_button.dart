import 'package:flutter/material.dart';
import 'package:flutter_cafe/core/components/spaces.dart';
import 'package:flutter_cafe/core/constants/colors.dart';
import 'package:flutter_cafe/gen/assets.gen.dart';

class ColumnButton extends StatelessWidget {
  final String label;
  final SvgGenImage svgGenImage;
  final VoidCallback onPressed;

  const ColumnButton({
    super.key,
    required this.label,
    required this.svgGenImage,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.primary),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: svgGenImage.svg(),
          ),
          const SpaceHeight(8.0),
          Text(
            label,
            style: const TextStyle(
              color: AppColors.charchoal,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
