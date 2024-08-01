import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:good_muslim/modals/data.dart';
import 'package:good_muslim/widgets/comunity_card.dart';

class KomunitasScreen extends StatefulWidget {
  const KomunitasScreen({super.key});

  @override
  State<KomunitasScreen> createState() => _KomunitasScreenState();
}

class _KomunitasScreenState extends State<KomunitasScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

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
              // Tab Navigation
              TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'Tanya Jawab'),
                  Tab(text: 'Artikel'),
                ],
                indicatorColor: Colors.green,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
              ),
              SizedBox(height: 20),
              // Tab Bar View
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // Tanya Jawab Tab
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Profil Ustadz
                        Container(
                            margin: EdgeInsets.only(bottom: 16),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/ustadz_profile.jpg'),
                                  radius: 30,
                                ),
                                Text(
                                  'Ustadz Ahmad',
                                  style: TextStyle(fontSize: 16),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 8),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    'Ikuti',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ).animate().scale(
                                    duration: 300.ms, curve: Curves.easeIn),
                              ],
                            )),
                        SizedBox(height: 20),
                        // Pertanyaan dan Jawaban
                        Expanded(
                          child: ListView.builder(
                            itemCount: communityCards.length,
                            itemBuilder: (context, index) {
                              final cardData = communityCards[index];
                              return ComunityCard(
                                title: cardData['title'],
                                description: cardData['description'],
                                avatarUrl: cardData['avatarUrl'],
                                name: cardData['name'],
                                date: cardData['date'],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    // Artikel Tab
                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            title: Text(
                                'Pentingnya Sholat dalam Kehidupan Sehari-hari'),
                            subtitle: Text('Oleh: Ustadz Ahmad'),
                          ),
                          ListTile(
                            title: Text('Cara Meningkatkan Keimanan'),
                            subtitle: Text('Oleh: Ustadz Ahmad'),
                          ),
                          // More ListTiles for other articles...
                        ],
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
