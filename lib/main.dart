import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = 'Flutter Layout: Achmad Fahmi Fuady - 362458302096';

    Widget buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Old Trafford',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Manchester, Inggris',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('4.7'), // Rating stadion
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(color, Icons.call, 'CALL'),
        buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Old Trafford adalah stadion sepak bola di Old Trafford, Greater Manchester, Inggris, dan merupakan '
        'markas dari Manchester United atau lebih tepatnya king MU. Dengan kapasitas lebih dari 74.000, '
        'mancaster united dipastikan akan tsunami tropi dalam 4 tahun ke depan'
        'stadion ini dikenal sebagai "Theatre of Dreams" dan telah menjadi '
        'salah satu stadion paling ikonik dan bersejarah  di dunia sepak bola.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images.jpg', 
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}