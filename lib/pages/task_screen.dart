import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '9:41 AM',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Minggu, 11 Februari',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () {
                        // Handle calendar icon press
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Title
                Text(
                  'Jadwal Hari Ini',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                // Progress Bar and Motivational Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    LinearProgressIndicator(
                      value: 0.7, // 70% progress
                      backgroundColor: Colors.grey[300],
                      color: Colors.green,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Ayok, kamu hampir selesai!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
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
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text('Sholat Subuh - 5:00 AM'),
                      trailing: Text('Selesai'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text('Sholat Dzuhur - 12:00 PM'),
                      trailing: Text('Selesai'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle_outline, color: Colors.grey),
                      title: Text('Sholat Ashar - 3:00 PM'),
                      trailing: Text('Belum'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle_outline, color: Colors.grey),
                      title: Text('Sholat Maghrib - 6:00 PM'),
                      trailing: Text('Belum'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle_outline, color: Colors.grey),
                      title: Text('Sholat Isya - 7:30 PM'),
                      trailing: Text('Belum'),
                    ),
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
                ListTile(
                  title: Text('Total Infak: Rp 50,000'),
                  subtitle: Text('Sumbangan bencana'),
                ),
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
}
