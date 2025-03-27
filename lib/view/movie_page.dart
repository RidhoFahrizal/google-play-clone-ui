import 'package:flutter/material.dart';
import 'package:google_play_ui_clone/view/app_bar.dart';
import 'package:google_play_ui_clone/view/bottom_navbar.dart';

class MoviesPage extends StatelessWidget {
  final List<Map<String, dynamic>> newMovies = [
    {
      "title": "September 5",
      "price": "Rp 29.000,00",
      "rating": 5.0,
      "poster": "assets/movie_images/Wonder.jpeg",
    },
    {
      "title": "The Last Showgirl",
      "price": "Rp 28.000,00",
      "rating": 1.0,
      "poster": "assets/movie_images/US.jpeg",
    },
    {
      "title": "Red One",
      "price": "Rp 175.000,00",
      "rating": 4.0,
      "poster": "assets/movie_images/Titanic.jpeg",
    },
    {
      "title": "Batman Ninja vs. Yakuza League",
      "price": "Rp 159.000,00",
      "rating": 3.5,
      "poster": "assets/movie_images/Smile.jpeg",
    },
    {
      "title": "Wolf Man (2025)",
      "price": "Rp 152.000,00",
      "rating": 3.5,
      "poster": "assets/movie_images/Openheimer.jpeg",
    },
  ];

  final List<Map<String, dynamic>> topSellingMovies = [
    {"title": "Death at a Funeral", "poster": "assets/movie_images/Joker.jpeg"},
    {"title": "Minzy", "poster": "assets/movie_images/IT.jpeg"},
    {"title": "The Intern", "poster": "assets/movie_images/Hellboy.jpeg"},
    {"title": "The Walk", "poster": "assets/movie_images/Harry.jpeg"},
    {"title": "World Trade Center", "poster": "assets/movie_images/Alone.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
 
              Text(
                "New to buy or rent",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: newMovies.length,
                  itemBuilder: (context, index) {
                    final movie = newMovies[index];
                    return movieCard(movie);
                  },
                ),
              ),

              SizedBox(height: 20),


              Text(
                "Top selling",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Most popular on Google TV",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topSellingMovies.length,
                  itemBuilder: (context, index) {
                    final movie = topSellingMovies[index];
                    return topSellingCard(movie);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }


  Widget movieCard(Map<String, dynamic> movie) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              movie["poster"],
              width: 120,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            movie["title"],
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "${movie["rating"]} ★  •  ${movie["price"]}",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }


  Widget topSellingCard(Map<String, dynamic> movie) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              movie["poster"],
              width: 120,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            movie["title"],
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
