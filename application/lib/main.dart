import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget textContainer = Container(
      padding: const EdgeInsets.all(15),
      child: const Row(
        children: [
          Column(
            children: [
              Text('Oeshinen Lake Campground',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.star),
                  Text(
                    '41',
                    style: TextStyle(),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );

    Widget public_service = Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.all(15),
      child: const Row(
        children: [
          Column(
            children: [
              Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              SizedBox(height: 2),
              Text('Call'),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.map,
                color: Colors.blue,
              ),
              SizedBox(height: 2),
              Text('Route'),
              SizedBox(width: 100),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.blue,
              ),
              SizedBox(height: 2),
              Text('Share'),
            ],
          ),
        ],
      ),
    );

    Widget aboutCampInfo = Container(
      padding: EdgeInsets.all(15),
      child: const Column(
        children: [
          Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run. '),
        ],
      ),
    );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('About Card'),
        ),
        body: Column(
          children: [
            Image.asset('assets/images/lake.jpg'),
            textContainer,
            public_service,
            aboutCampInfo
          ],
        ),
      ),
    );
  }
}



/*
'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run. '
*/