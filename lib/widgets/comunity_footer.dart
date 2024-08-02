import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ComunityCardFooter extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final String date;
  final bool isBookmarked;
  final VoidCallback onBookmarkToggle;

  const ComunityCardFooter({
    Key? key,
    required this.avatarUrl,
    required this.name,
    required this.date,
    required this.isBookmarked,
    required this.onBookmarkToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Image.asset(avatarUrl),
        ).animate().scale(duration: 500.ms),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ).animate().fadeIn(duration: 500.ms),
            SizedBox(height: 2),
            Text(
              date,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ).animate().fadeIn(duration: 500.ms),
          ],
        ),
        Spacer(),
        IconButton(
          icon: Icon(
            isBookmarked ? Icons.bookmark : Icons.bookmark_border,
            color: isBookmarked ? Colors.green : Colors.grey,
          ).animate().scale(duration: 300.ms),
          onPressed: onBookmarkToggle,
        ),
      ],
    );
  }
}
