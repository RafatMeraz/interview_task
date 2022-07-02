import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class RoundSocialIconButton extends StatelessWidget {
  const RoundSocialIconButton({
    Key? key, required this.image, required this.onTap,
  }) : super(key: key);

  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 16,
        backgroundColor: const Color(0xFFF5F6FA),
        child: ImageIcon(
          AssetImage(image),
          color: ColorUtils.softBlackColor,
          size: 16,
        ),
      ),
    );
  }
}