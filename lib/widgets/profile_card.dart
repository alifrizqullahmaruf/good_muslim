import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProfileCard extends StatelessWidget {
  final String avatarImage;
  final String name;
  final VoidCallback onFollowPressed;

  const ProfileCard({
    Key? key,
    required this.avatarImage,
    required this.name,
    required this.onFollowPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Image.asset(avatarImage),
            radius: 30,
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: onFollowPressed,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Ikuti',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ).animate().scale(duration: 300.ms, curve: Curves.easeIn),
        ],
      ),
    );
  }
}
