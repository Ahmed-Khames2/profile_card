import 'package:flutter/material.dart';
import 'package:profile_card/core/colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage('assets/profile.jpg'),
        ),
        SizedBox(height: 15),
        Text(
          'خالد محمد',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Flutter Developer | Mobile App Enthusiast',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.textSecondary,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
