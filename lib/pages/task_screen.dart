import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:good_muslim/widgets/task_card.dart';
import 'package:good_muslim/widgets/task_infaq.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  bool _showAllTasks =
      false; // Variable to track whether to show all tasks or not

  // Sample task data
  final List<Map<String, String>> _tasks = [
    {"title": "Sholat Subuh", "time": '05:00 AM'},
    {"title": "Sholat Dzuhur", "time": '12:00 PM'},
    {"title": "Sholat Ashar", "time": '3:00 PM'},
    {"title": "Sholat Maghrib", "time": '6:00 PM'},
    {"title": "Sholat Isya", "time": '7:30 PM'},
  ];

  List<Map<String, String>> _infaqItems = [
    {"money": 'Rp 50,000', "desc": 'Sumbangan bencana'},
    {"money": 'Rp 20,000', "desc": 'Bantuan yatim'},
    // Add more items if needed
  ];

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
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 5,
                              spreadRadius: 2,
                            )
                          ]),
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
                Column(
                  children: _buildTaskCards(),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _showAllTasks = !_showAllTasks; // Toggle the state
                    });
                  },
                  child: Text(_showAllTasks
                      ? 'Lihat Lebih Sedikit'
                      : 'Lihat Lebih Banyak'),
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
                Column(
                  children: _buildInfaqItems(),
                ),
                TextButton(
                  onPressed: () {
                    _showAddInfaqDialog();
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

  List<Widget> _buildTaskCards() {
    // Get the tasks to display based on the state
    final tasksToDisplay = _showAllTasks ? _tasks : _tasks.take(3).toList();
    return tasksToDisplay.map((task) {
      return TaskCard(title: task["title"]!, time: task["time"]!)
          .animate()
          .fadeIn(duration: 300.ms);
    }).toList();
  }

  List<Widget> _buildInfaqItems() {
    return _infaqItems.map((infaq) {
      return TaskInfaq(
        money: infaq["money"]!,
        desc: infaq["desc"]!,
        onDismissed: () {
          setState(() {
            _infaqItems.remove(infaq); // Remove the item from the list
          });
        },
      ).animate().fadeIn(duration: 300.ms);
    }).toList();
  }

  // Function to show dialog for adding new infak item
  void _showAddInfaqDialog() {
    // Create separate controllers for amount and description
    final TextEditingController amountController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tambah Infak Sedekah'),
          content: Column(
            mainAxisSize: MainAxisSize
                .min, // Ensure the column size is only as large as its content
            children: <Widget>[
              TextField(
                controller: amountController,
                decoration: InputDecoration(hintText: 'Masukkan jumlah'),
                keyboardType: TextInputType.number, // For numerical input
              ),
              SizedBox(height: 10), // Add spacing between fields
              TextField(
                controller: descriptionController,
                decoration:
                    InputDecoration(hintText: 'Masukkan deskripsi singkat'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text('Tambah'),
              onPressed: () {
                setState(() {
                  // Add new item to _infaqItems with amount and description
                  _infaqItems.add({
                    "money": amountController.text.isNotEmpty
                        ? 'Rp ${amountController.text}'
                        : 'Rp 0',
                    "desc": descriptionController.text.isNotEmpty
                        ? descriptionController.text
                        : 'Tanpa Deskripsi',
                  });
                });
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
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
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Handle Settings
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {
              // Handle Help
            },
          ),
        ],
      ),
    );
  }
}
