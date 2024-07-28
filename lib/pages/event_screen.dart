import 'package:flutter/material.dart';

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
              Text(
                'Event disekitar kamu',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              // Event List
              Expanded(
                child: ListView(
                  children: [
                    // Event Item
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(16),
                        title: Text(
                          'Kajian Akbar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Minggu, 11 Februari, 09:00 WIB'),
                            Text('Masjid Al-Falah, Jakarta'),
                            SizedBox(height: 8),
                            Text('Kajian bersama Ustadz Ahmad dengan tema "Meningkatkan Keimanan".'),
                          ],
                        ),
                        trailing: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.calendar_today),
                              onPressed: () {
                                // Handle calendar icon tap
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.bookmark_border),
                              onPressed: () {
                                // Handle bookmark icon tap
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    // More Event Items...
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(16),
                        title: Text(
                          'Pengajian Subuh',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sabtu, 10 Februari, 05:00 WIB'),
                            Text('Masjid Al-Hikmah, Bandung'),
                            SizedBox(height: 8),
                            Text('Pengajian bersama Ustadz Budi dengan tema "Menggapai Hidayah".'),
                          ],
                        ),
                        trailing: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.calendar_today),
                              onPressed: () {
                                // Handle calendar icon tap
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.bookmark_border),
                              onPressed: () {
                                // Handle bookmark icon tap
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

