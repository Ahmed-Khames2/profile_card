import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<void> _openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0f172a),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
          child: Column(
            children: [
              // 🔹 الصورة الشخصية
              // CircleAvatar(
              //   radius: 80,
              //   backgroundImage: const AssetImage('assets/profile.jpg'),
              //   backgroundColor: Colors.grey.shade800,
              // ),
              const SizedBox(height: 25),

              // 🔹 الاسم و الوظيفة
              const Text(
                'خالد محمد',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Flutter Developer | Mobile App Creator',
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
              const SizedBox(height: 25),

              // 🔹 نبذة عنك
              const Text(
                'مطور تطبيقات موبايل بخبرة في Flutter و Firebase، شغوف ببناء تطبيقات مميزة وسريعة الأداء. بحب أشتغل على مشاريع بتقدم قيمة حقيقية للمستخدمين.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white60, fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 40),

              // 🔹 روابط السوشيال ميديا
              Wrap(
                spacing: 20,
                children: [
                  _socialButton(Icons.facebook, 'Facebook', 'https://facebook.com/yourprofile', _openLink),
                  _socialButton(Icons.camera_alt, 'Instagram', 'https://instagram.com/yourprofile', _openLink),
                  _socialButton(Icons.work, 'LinkedIn', 'https://linkedin.com/in/yourprofile', _openLink),
                  _socialButton(Icons.code, 'GitHub', 'https://github.com/yourprofile', _openLink),
                ],
              ),

              const SizedBox(height: 35),

              // 🔹 مواقع الفريلانسينج
              const Text(
                'Freelancing Platforms',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Wrap(
                spacing: 16,
                children: [
                  _platformButton('Upwork', 'https://www.upwork.com/freelancers/yourname', _openLink),
                  _platformButton('Freelancer', 'https://www.freelancer.com/u/yourname', _openLink),
                  _platformButton('Fiverr', 'https://www.fiverr.com/yourname', _openLink),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Widget: زر السوشيال ميديا
  static Widget _socialButton(IconData icon, String label, String url, Function(String) onTap) {
    return InkWell(
      onTap: () => onTap(url),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white10,
            radius: 30,
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          const SizedBox(height: 6),
          Text(label, style: const TextStyle(color: Colors.white70, fontSize: 12)),
        ],
      ),
    );
  }

  // 🔹 Widget: زر منصة الفريلانسينج
  static Widget _platformButton(String name, String url, Function(String) onTap) {
    return ElevatedButton(
      onPressed: () => onTap(url),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(name, style: const TextStyle(fontSize: 16, color: Colors.white)),
    );
  }
}
