import 'package:flutter/material.dart';

class TopCharts extends StatelessWidget {
  final List<Map<String, dynamic>> apps = [
    {
      "name": "Google Authenticator",
      "category": "Tools",
      "rating": 4.5,
      "icon": "assets/images/facebook.png",
      "rank": 1,
    },
    {
      "name": "WhatsApp Messenger",
      "category": "Communication",
      "rating": 4.3,
      "icon": "assets/images/shopee.png",
      "rank": 2,
    },
    {
      "name": "DramaBox - Stream Drama Shorts",
      "category": "Entertainment",
      "rating": 4.5,
      "icon": "assets/images/PENS.png",
      "rank": 3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: apps.length,
      itemBuilder: (context, index) {
        final app = apps[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Row(
            children: [
              Text(
                "${app['rank']}.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(app['icon'], width: 50, height: 50),
              ),
              SizedBox(width: 15),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      app['name'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Kategori + Rating
                    Text(
                      "${app['category']} • ${app['rating']} ★",
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
