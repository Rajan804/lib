import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/APIsCall/screen/top_movies_screen.dart';
import 'package:final_project/APIsCall/screen/trending_movies_screen.dart';
import 'package:final_project/APIsCall/trendig_movies_api.dart';
import 'package:final_project/model/trendign_movie_model.dart';
import 'package:final_project/pages/movie_details_page.dart';
import 'package:final_project/widgets/button_navigation_bar.dart';
import 'package:final_project/widgets/searcbox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Movie>> nowShowing;

  @override
  void initState() {
    nowShowing = APIservices().getNowShowing();
    super.initState();
  }

  final allMovies = [
    "assets/img/ajay.jpeg",
    "assets/img/chandigarh.jpeg",
    "assets/img/devara.jpg",
    "assets/img/fighter.jpeg",
    "assets/img/Kalki.png",
    "assets/img/Salaar.jpeg",
    "assets/img/stree2.jpg",
    "assets/img/teriBatomai.jpg",
    "assets/img/Vedda2.jpg",
  ];

  final allMoviesName = [
    "Auro Mai Kaha Dam Tha",
    "Chandigarh Care Aasique",
    "devara",
    "fighter",
    "Kalki",
    "Salaar",
    "stree2",
    "Teri Batton Main Uljha Jiya.jpg",
    "Vedda2",
  ];

  int currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Home Page')),
    Center(child: Text('Booking Page')),
    Center(child: Text('Help Page')),
    Center(child: Text('Account Page')),
  ];

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 17, right: 17, top: 2),
          child: Column(
            children: [
              // Upper container with search box and top movies
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 19),
                      SearchBox(),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Top Movies",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      TrendingMoviesScreen(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              // Middle container for trending movies
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 17, right: 17, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildFilterButton(Icons.filter_list, "Filter"),
                          _buildFilterButton(
                              Icons.calendar_month_outlined, "Date"),
                          _buildFilterButton(
                              Icons.arrow_downward_sharp, "Language"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Trending Movies",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: TopMoviesScreen()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom navigation bar without overflow issues
      bottomNavigationBar: SizedBox(
        height: 60, // Adjust height as needed
        child: ButtonNavigationBar(),
      ),
    );
  }

  // Helper function for filter buttons
  Widget _buildFilterButton(IconData icon, String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Color(0xffB81736),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 18, // Reduced font size to prevent overflow
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
