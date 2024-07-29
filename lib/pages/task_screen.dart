import 'package:flutter/material.dart';
import 'package:good_muslim/widgets/task_card.dart';
import 'package:good_muslim/widgets/task_infaq.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) => GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: CircleAvatar(
                          child: Image.asset('lib/assets/profile.png'),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Minggu, 11 Feb',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Jadwal Hari ini',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.calendar_today, color: Colors.green),
                        onPressed: () {
                          // Handle calendar icon press
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Section Card Contents
                _buildSectionCardContents(),
                SizedBox(height: 30),
                // Task Ibadah Kamu
                Text(
                  'Task Ibadah Kamu',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                ListView(
                  shrinkWrap: true,
                  children: [
                   TaskCard(title: "Sholat Subuh", time: '05:00 AM'),
                   TaskCard(title: "Sholat Dzuhur", time: '12:00 PM'),
                   TaskCard(title: "Sholat Ashar", time: '3:00 PM'),
                   TaskCard(title: "Sholat Maghrib", time: '6:00 PM'),
                   TaskCard(title: "Sholat Isya", time: '7:30 PM'),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Handle "Lihat Lebih Banyak"
                  },
                  child: Text('Lihat Lebih Banyak'),
                ),
                SizedBox(height: 30),
                // Infak Sedekah Harian
                Text(
                  'Infak Sedekah Harian',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                TaskInfaq(money: 'Rp 50,000', desc: 'Sumbangan bencana'),
                TextButton(
                  onPressed: () {
                    // Handle "Tambah Catatan"
                  },
                  child: Text('Tambah Catatan'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionCardContents() {
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.green,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              // Motivational Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    child: Text(
                      'Ayok, kamu hampir selesai!',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Button
                  ElevatedButton(
                    onPressed: () {
                      // Handle "Capaian Saya"
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Capaian Saya',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              // Progress Indicator
              CircularPercentIndicator(
                radius: 50.0,
                lineWidth: 10.0,
                percent: 0.7, // 70% progress
                backgroundColor: Colors.grey[300]!,
                progressColor: Colors.white,
                circularStrokeCap: CircularStrokeCap.round,
                center: Text(
                  '70%',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: Column(
        children: [
          // Header
          Container(
            height: 150,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('lib/assets/profile.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hassan Aldhi',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'hassan.alldhi@example.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Menu Items
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              // Handle Profile
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Pertanyaan saya'),
            onTap: () {
              // Handle Pertanyaan saya
            },
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Disimpan'),
            onTap: () {
              // Handle Disimpan
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifikasi'),
            onTap: () {
              // Handle Notifikasi
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Pengaturan'),
            onTap: () {
              // Handle Pengaturan
            },
          ),
          Spacer(),
          // Logout Button
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text('Logout', style: TextStyle(color: Colors.red)),
            onTap: () {
              // Handle Logout
            },
          ),
        ],
      ),
    );
  }
}
