import 'package:flutter/material.dart';
import 'package:profile_card/core/colors.dart';

class SocialIconsRow extends StatelessWidget {
  final String facebookUrl;
  final String instagramUrl;
  final String linkedinUrl;
  final Future<void> Function(String) onTap;

  const SocialIconsRow({
    super.key,
    required this.facebookUrl,
    required this.instagramUrl,
    required this.linkedinUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: [
        IconButton(
          onPressed: () => onTap(facebookUrl),
          icon: const Icon(Icons.facebook, color: AppColors.textPrimary, size: 30),
        ),
        IconButton(
          onPressed: () => onTap(instagramUrl),
          icon: const Icon(Icons.camera_alt, color: AppColors.textPrimary, size: 30),
        ),
        IconButton(
          onPressed: () => onTap(linkedinUrl),
          icon: const Icon(Icons.business, color: AppColors.textPrimary, size: 30),
        ),
      ],
    );
  }
}
