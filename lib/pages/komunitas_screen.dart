import 'package:flutter/material.dart';

class KomunitasScreen extends StatefulWidget {
  const KomunitasScreen({super.key});

  @override
  State<KomunitasScreen> createState() => _KomunitasScreenState();
}

class _KomunitasScreenState extends State<KomunitasScreen> with SingleTickerProviderStateMixin {
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
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/ustadz_profile.jpg'),
                            radius: 30,
                          ),
                          title: Text('Ustadz Ahmad'),
                          subtitle: Text('Ahli Agama'),
                          trailing: ElevatedButton(
                            onPressed: () {
                              // Handle follow button
                            },
                            child: Text('Ikuti'),
                            style: ElevatedButton.styleFrom(
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        // Pertanyaan dan Jawaban
                        Expanded(
                          child: ListView(
                            children: [
                              ListTile(
                                title: Text('Bagaimana cara meningkatkan keimanan?'),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Jawaban: Dengan memperbanyak ibadah dan doa.'),
                                    Row(
                                      children: [
                                        Text('Ustadz Ahmad', style: TextStyle(fontWeight: FontWeight.bold)),
                                        Spacer(),
                                        Text('2 hari yang lalu', style: TextStyle(color: Colors.grey)),
                                      ],
                                    ),
                                  ],
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.thumb_up_alt_outlined),
                                      onPressed: () {
                                        // Handle like button
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.comment_outlined),
                                      onPressed: () {
                                        // Handle comment button
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              // More ListTiles for other questions and answers...
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Artikel Tab
                    ListView(
                      children: [
                        ListTile(
                          title: Text('Pentingnya Sholat dalam Kehidupan Sehari-hari'),
                          subtitle: Text('Oleh: Ustadz Ahmad'),
                        ),
                        ListTile(
                          title: Text('Cara Meningkatkan Keimanan'),
                          subtitle: Text('Oleh: Ustadz Ahmad'),
                        ),
                        // More ListTiles for other articles...
                      ],
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
