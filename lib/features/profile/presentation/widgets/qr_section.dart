import 'package:flutter/material.dart';
import 'package:profile_card/core/colors.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrSection extends StatelessWidget {
  final String profileUrl;

  const QrSection({super.key, required this.profileUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: QrImageView(
            data: profileUrl,
            version: QrVersions.auto,
            size: 120,
            backgroundColor: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Scan to visit my profile',
          style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
        ),
      ],
    );
  }
}
