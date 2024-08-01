import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ComunityCardHeader extends StatelessWidget {
  final String title;
  final String description;

  const ComunityCardHeader({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ).animate().fadeIn(duration: 500.ms),
        SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        ).animate().fadeIn(duration: 500.ms),
      ],
    );
  }
}
