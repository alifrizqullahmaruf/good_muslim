import 'package:flutter/material.dart';
import 'package:good_muslim/pages/events/detail_event.dart';

class EventCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String date;
  final String time;
  final String speakerImage;
  final String speakerName;
  final String speakerDesc;
  final String description;
  final String location;
  final VoidCallback onBookmarkPressed;

  const EventCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.date,
    required this.time,
    required this.speakerImage,
    required this.speakerName,
    required this.speakerDesc,
    required this.description,
    required this.location,
    required this.onBookmarkPressed,
  }) : super(key: key);

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool isBookmarked = false;

  void toggleBookmark() {
    setState(() {
      isBookmarked = !isBookmarked;
    });

    final snackBar = SnackBar(
      content: Text(isBookmarked ? 'Bookmarked' : 'Bookmark removed'),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EventDetail(
                imagePath: widget.imagePath,
                title: widget.title,
                date: widget.date,
                time: widget.time,
                speakerImage: widget.speakerImage,
                speakerName: widget.speakerName,
                speakerDesc: widget.speakerDesc,
                description: widget.description,
                location: widget.location,
              ),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.all(18),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                width: double.infinity,
                height: 150,
                child: Image.asset(
                  widget.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Divider(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(
                        width: 4,
                      ),
                      Text(widget.date),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(
                        width: 4,
                      ),
                      Text(widget.time),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                      color: isBookmarked ? Colors.green : Colors.grey,
                    ),
                    onPressed: () {
                      toggleBookmark();
                      widget.onBookmarkPressed();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
