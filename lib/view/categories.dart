import 'package:flutter/material.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  _CategoriesSectionState createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  int selectedIndex = 1;

  final List<Map<String, dynamic>> categories = [
    {"icon": Icons.desktop_windows, "label": "Windows"},
    {"icon": Icons.phone_android, "label": "Ponsel"},
    {"icon": Icons.tablet, "label": "Tablet"},
    {"icon": Icons.tv, "label": "TV"},
    {"icon": Icons.laptop_chromebook, "label": "Chromebook"},
    {"icon": Icons.watch, "label": "Smartwatch"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: isSelected ? Colors.green.shade100 : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade400, width: 1),
              ),
              child: Row(
                children: [
                  Icon(
                    categories[index]["icon"],
                    color: isSelected ? Colors.green : Colors.grey.shade700,
                  ),
                  SizedBox(width: 6),
                  Text(
                    categories[index]["label"],
                    style: TextStyle(
                      color:
                          isSelected
                              ? Colors.green.shade900
                              : Colors.grey.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
