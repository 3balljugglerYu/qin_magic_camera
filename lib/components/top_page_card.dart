import 'package:flutter/material.dart';

class TopPageCard extends StatelessWidget {
  const TopPageCard({this.icon, this.mainTitle, this.subTitle, this.transitionDestination});

  final IconData? icon;
  final String? mainTitle;
  final String? subTitle;
  final Route? transitionDestination;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      elevation: 10.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: (() async {
          final result = await Navigator.push(
            context,
            transitionDestination!,
          );
          print(result);
        }),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            ListTile(
              leading: Icon(icon),
              title: Text(
                mainTitle!,
                style: TextStyle(fontSize: 18.0),
              ),
              subtitle: Text(
                subTitle!,
                style: TextStyle(fontSize: 13.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('この現象へ移動'),
                SizedBox(width: 8.0),
                Text('Go'),
                Icon(Icons.arrow_right),
                SizedBox(width: 20.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}
