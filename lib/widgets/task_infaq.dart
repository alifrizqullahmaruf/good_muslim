import 'package:flutter/material.dart';

class TaskInfaq extends StatefulWidget {
  final String money;
  final String desc;
  final VoidCallback onDismissed; // Callback when the item is dismissed

  TaskInfaq({
    Key? key,
    required this.money,
    required this.desc,
    required this.onDismissed, // Required callback
  }) : super(key: key);

  @override
  _TaskInfaqState createState() => _TaskInfaqState();
}

class _TaskInfaqState extends State<TaskInfaq> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(), // Unique key for each item
      onDismissed: (direction) {
        widget.onDismissed(); // Call the callback when the item is dismissed
      },
      background: Container(
        color: Colors.red, // Background color for swipe action
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Icon(Icons.delete, color: Colors.white),
      ),
      secondaryBackground: Container(
        color: Colors.red, // Background color for swipe action
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Icon(Icons.delete, color: Colors.white),
      ),
      child: Card(
        color: Colors.white,
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
                    color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: Image.asset('lib/assets/infaq_icon.png'),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.money,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    widget.desc,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
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
