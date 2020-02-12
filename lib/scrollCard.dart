import 'package:flutter/material.dart';

class TempCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '30',
              style: TextStyle(
                  fontSize: 90,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            Text(
              'Clear',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, bottom: 70),
              child: Text(
                'Light raidndodiojidmipdoojkdmpodlr jo j',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ),
            Divider(
              color: Colors.white12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '28 --- 40',
                  style: TextStyle(color: Colors.white54),
                ),
                Icon(
                  Icons.cloud,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
