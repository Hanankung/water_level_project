import 'package:flutter/material.dart';
import 'package:water_level_project/forecast_page.dart' as forecast;
import 'package:water_level_project/index.dart';

class WaterLevelPage extends StatelessWidget {
  const WaterLevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> waterLevels = [
      {
        'percentage': '133.08%',
        'location': 'เขื่อนลอยน้ำใส',
        'datetime': '2025-01-15 11.31 น.',
        'status': 'น้ำล้นตลิ่ง',
        'color': Colors.red
      },
      {
        'percentage': '133.98%',
        'location': 'ชีวี',
        'datetime': '2025-01-15 11.31 น.',
        'status': 'น้ำล้นตลิ่ง',
        'color': Colors.red
      },
      {
        'percentage': '95.64%',
        'location': 'คลองสบประภาน',
        'datetime': '2025-01-15 11.31 น.',
        'status': 'น้ำมาก',
        'color': Colors.blue
      },
      {
        'percentage': '95.64%',
        'location': 'ปิงน้ำ',
        'datetime': '2025-01-15 11.31 น.',
        'status': 'น้ำมาก',
        'color': Colors.blue
      },
      {
        'percentage': '133.89%',
        'location': 'คลองป้ายอม',
        'datetime': '2025-01-15 11.31 น.',
        'status': 'น้ำล้นตลิ่ง',
        'color': Colors.red
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C60D2),
        title: const Text('ระดับน้ำ', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: waterLevels.length,
        itemBuilder: (context, index) {
          final item = waterLevels[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: item['color'].withOpacity(0.9),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['percentage'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'ของความจุ',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      item['location'],
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      item['datetime'],
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                Text(
                  item['status'],
                  style: TextStyle(
                    color: item['color'] == Colors.red ? Colors.red[100] : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
            // หน้าปัจจุบัน
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const forecast.ForecastPage()),
            );
          }
        },
      ),
    );
  }
}
