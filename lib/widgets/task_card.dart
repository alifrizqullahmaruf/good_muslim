import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String time;
  final bool isCompleted;
  final VoidCallback onComplete; // Callback to notify parent

  TaskCard({
    Key? key,
    required this.title,
    required this.time,
    required this.isCompleted,
    required this.onComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isCompleted ? Colors.white : Colors.green.shade300,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 38,
              height: 40,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset('lib/assets/pray_icon.png'),
            ),
            SizedBox(
              width: 12,
            ),
            isCompleted
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black26,
                          fontWeight: FontWeight.w700,
                        ),
                      ).animate().fadeIn(duration: 300.ms),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ).animate().fadeIn(duration: 300.ms),
                      Text(
                        time,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ).animate().fadeIn(duration: 300.ms),
                    ],
                  ),
            Spacer(),
            isCompleted
                ? CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ).animate().scale(duration: 300.ms, curve: Curves.easeIn)
                : ElevatedButton(
                    onPressed: () {
                      onComplete(); // Notify parent
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Selesai',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ).animate().scale(duration: 300.ms, curve: Curves.easeIn),
          ],
        ),
      ),
    );
  }
}

