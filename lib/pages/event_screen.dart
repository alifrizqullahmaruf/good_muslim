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
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Cari disini',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Event Location Header
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Event disekitar kamu',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Event List
              Expanded(
                child: ListView.builder(
                  itemCount: eventDetail.length,
                  itemBuilder: (context, index) {
                    final cardData = eventDetail[index];
                    return EventCard(
                      imagePath: cardData['imagePath'],
                      speakerImage: cardData['speakerImage'],
                      speakerDesc: cardData['speakerDesc'],
                      speakerName: cardData['speakerName'],
                      description: cardData['description'],
                      location: cardData['location'],
                      title: cardData['title'],
                      date: cardData['date'],
                      time: cardData['time'],
                      onBookmarkPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Bookmarked ${cardData['title']}"),
                          ),
                        );
                        // Pastikan untuk menghapus atau menangani jika cardData['onBookmarkPressed'] tidak ada
                        if (cardData.containsKey('onBookmarkPressed')) {
                          cardData['onBookmarkPressed']();
                        }
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
