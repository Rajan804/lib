import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/APIsCall/top_movies_api.dart';
import 'package:final_project/model/trendign_movie_model.dart';
import 'package:flutter/material.dart';

class TopMoviesScreen extends StatefulWidget {
  const TopMoviesScreen({super.key});

  @override
  State<TopMoviesScreen> createState() => _TopMoviesScreenState();
}

class _TopMoviesScreenState extends State<TopMoviesScreen> {
  late Future<List<Movie>> topMoviesAPI;

  @override
  void initState() {
    // Initialize the API call
    topMoviesAPI = APIservices().getTopMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
        // Use GridView.builder for two-column layout
        FutureBuilder(
      future: topMoviesAPI,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final movies = snapshot.data!;
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two columns
            // crossAxisSpacing: 10,
            // mainAxisSpacing: 10,
            // childAspectRatio:
            //     0.7, // Adjust the aspect ratio to suit movie poster dimensions
          ),
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 1.5,
                      ),
                    ],
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://image.tmdb.org/t/p/w500/${movie.backDropPath}",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      movie.title,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis, // Prevent overflow
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        );
      },
    );
  }
}
