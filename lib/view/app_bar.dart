import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 2,
      title: Row(
        children: [
          Image.asset("assets/images/google-play.png", height: 40, width: 40),
          const SizedBox(width: 10),
          Text(
            "Google Play, by Ridho",
            style: TextStyle(fontSize: 20, color: Colors.grey[600]),
          ),
        ],
      ),
      actions: [
        const Icon(Icons.search, color: Colors.black),
        const SizedBox(width: 10),
        const Icon(Icons.question_mark, color: Colors.black),
        const SizedBox(width: 10),
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/anthony_avatar.png"),
        ),
        const SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
