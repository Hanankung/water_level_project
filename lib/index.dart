import 'package:flutter/material.dart';
import 'package:water_level_project/forecast_page.dart';
import 'package:water_level_project/water_level_page.dart';


class WaterLevelApp extends StatelessWidget {
  const WaterLevelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Level Monitoring',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF1C60D2),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {},
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'ภาพรวม',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'สถานที่',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Column(
            children: const [
              Icon(Icons.water, size: 100, color: Colors.blueAccent),
              SizedBox(height: 8),
              Text(
                'WATER LEVEL',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  letterSpacing: 2,
                ),
              ),
              Text(
                'MONITORING AND ALERT SYSTEM',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blueAccent,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    color: Colors.blue[800],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.waterfall_chart, color: Colors.white, size: 40),
                        SizedBox(height: 10),
                        Text('ระดับน้ำ', style: TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Colors.cyan[700],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.umbrella, color: Colors.white, size: 40),
                        SizedBox(height: 10),
                        Text(
                          'คาดการณ์ฝน\n15 มกราคม 2568',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
  currentIndex: 0,
  selectedItemColor: Colors.blueAccent,
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'หน้าแรก',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.water),
      label: 'ระดับน้ำ',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.timeline),
      label: 'คาดการณ์',
    ),
  ],
  onTap: (index) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WaterLevelPage()),
      );
    } else if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ForecastPage()),
      );
    }
  },
),

    );
  }
}
