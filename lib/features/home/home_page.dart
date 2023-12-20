import 'package:flutter/material.dart';
import 'package:weather_app/features/search/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Weather App'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Spacer(
                flex: 3,
              ),
              Text(
                'cairo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'update at 24 : 55',
                style: TextStyle(fontSize: 22),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'asset/image/download.jpeg',
                    height: 75,
                  ),
                  Text(
                    '32',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Text('MaxTemp : 34'),
                      Text('MinTemp : 34'),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Text(
                'Sunny',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              Spacer(flex: 5,)
            ],
          ),
        )
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text(
        //         'there is no weather',
        //         style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        //       ),
        //       Text(
        //         'Start searching now 🔎',
        //         style: TextStyle(
        //             fontSize: 25, fontWeight: FontWeight.bold, height: 2),
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
