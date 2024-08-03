import 'package:flutter/material.dart';
import 'package:good_muslim/modals/data.dart';
import 'package:good_muslim/widgets/event_card.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Cari disini',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Event Location Header
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Event disekitar kamu',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Event List
              Expanded(
                child: ListView.builder(
                  itemCount: eventsCard.length,
                  itemBuilder: (context, index) {
                    final cardData = eventsCard[index];
                    return EventCard(
                      imagePath: cardData['imagePath'],
                      title: cardData['title'],
                      date: cardData['date'],
                      time: cardData['time'],
                      onBookmarkPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text("Bookmarked ${cardData['title']}")),
                        );
                        cardData['onBookmarkPressed']();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
