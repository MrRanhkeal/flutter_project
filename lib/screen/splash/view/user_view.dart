import 'package:flutter/material.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/image/profile.jpg'), // Replace with NetworkImage if needed
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 10),
            const Text(
              'Keal Ranh',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'kealranhcamkh@gmail.com',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ProfileStat(title: 'Movies', value: '200'),
                ProfileStat(title: 'Followers', value: '150'),
                ProfileStat(title: 'Following', value: '170'),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    ProfileMenuItem(icon: Icons.bookmark, title: 'Want to watch', value: '40'),
                    ProfileMenuItem(icon: Icons.star, title: 'Ratings and reviews', value: '51'),
                    ProfileMenuItem(icon: Icons.favorite, title: 'Favorite films', value: '92'),
                    ProfileMenuItem(icon: Icons.thumb_up, title: 'Recommended', value: '51'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileStat extends StatelessWidget {
  final String title;
  final String value;

  const ProfileStat({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ],
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const ProfileMenuItem({required this.icon, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.purple, size: 30),
          const SizedBox(width: 10),
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          const Spacer(),
          Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}