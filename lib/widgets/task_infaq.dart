import 'package:flutter/material.dart';

class TaskInfaq extends StatefulWidget {
  final String money;
  final String desc;

  TaskInfaq({
    Key? key,
    required this.money,
    required this.desc,
  }) : super(key: key);

  @override
  _TaskInfaqState createState() => _TaskInfaqState();
}

class _TaskInfaqState extends State<TaskInfaq> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
            SizedBox(
              width: 12,
            ),
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
    );
  }
}
