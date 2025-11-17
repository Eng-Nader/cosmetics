import '../widgets/profile_list_view.dart';
import '../widgets/profile_header.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            SizedBox(
              height: 60,
            ),
            Text(
              'Nader Sameer Gaber',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            ProfileView(),
          ],
        ),
      ),
    );
  }
}
