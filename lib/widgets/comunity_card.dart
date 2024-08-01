import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:good_muslim/widgets/comunity_footer.dart';
import 'package:good_muslim/widgets/comunity_header.dart';

class ComunityCard extends StatefulWidget {
  final String title;
  final String description;
  final String avatarUrl;
  final String name;
  final String date;

  const ComunityCard({
    Key? key,
    required this.title,
    required this.description,
    required this.avatarUrl,
    required this.name,
    required this.date,
  }) : super(key: key);

  @override
  State<ComunityCard> createState() => _ComunityCardState();
}

class _ComunityCardState extends State<ComunityCard> {
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ComunityCardHeader(
              title: widget.title,
              description: widget.description,
            ),
            SizedBox(height: 4),
            Divider().animate().fadeIn(duration: 500.ms),
            SizedBox(height: 4),
            ComunityCardFooter(
              avatarUrl: widget.avatarUrl,
              name: widget.name,
              date: widget.date,
              isBookmarked: _isBookmarked,
              onBookmarkToggle: () {
                setState(() {
                  _isBookmarked = !_isBookmarked;
                });
              },
            ),
          ],
        ).animate().fadeIn(duration: 500.ms),
      ),
    );
  }
}
