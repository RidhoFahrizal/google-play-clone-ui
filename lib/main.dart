import 'package:flutter/material.dart';
import 'package:google_play_ui_clone/view/app_bar.dart';
import 'package:google_play_ui_clone/view/bottom_navbar.dart';
import 'package:google_play_ui_clone/view/categories.dart';
import 'package:google_play_ui_clone/view/sliding_image_apps.dart';
import 'package:google_play_ui_clone/view/top_chart.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoriesSection(),
            SizedBox(height: 10),
            SlidingImageApps(),
            SizedBox(height: 10),

            Text(
              "Top Charts",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TopCharts(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
