import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int ninjaLevel = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Game Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel +=2;
          });
        },
        child: Icon(
          (Icons.add),
        ),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/1.png'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[600],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Chun-Li",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'chunli@mail.com',
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.grey[400],
                    fontSize: 18,
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
