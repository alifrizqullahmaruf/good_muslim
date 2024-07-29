import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  final String title;
  final String time;
  bool isCompleted;

  TaskCard(
      {Key? key,
      required this.title,
      required this.time,
      this.isCompleted = false})
      : super(key: key);

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.isCompleted ? Colors.white : Colors.green.shade300,
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
                  color: Colors.green, borderRadius: BorderRadius.circular(8)),
              child: Image.asset('lib/assets/pray_icon.png'),
            ),
            SizedBox(
              width: 12,
            ),
            widget.isCompleted
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black26,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        widget.time,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
            Spacer(),
            widget.isCompleted
                ? CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ))
                : ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.isCompleted = true; // Now allowed to modify
                      });
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
                          fontWeight: FontWeight.w700),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
