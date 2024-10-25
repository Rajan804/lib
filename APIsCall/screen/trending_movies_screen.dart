import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/APIsCall/trendig_movies_api.dart';
import 'package:final_project/model/trendign_movie_model.dart';
import 'package:flutter/material.dart';

class TrendingMoviesScreen extends StatefulWidget {
  const TrendingMoviesScreen({super.key});

  @override
  State<TrendingMoviesScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<TrendingMoviesScreen> {
  late Future<List<Movie>> nowShowingAPI;

  @override
  void initState() {
    nowShowingAPI = APIservices().getNowShowing();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: nowShowingAPI,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final movies = snapshot.data!;
        return CarouselSlider.builder(
          itemCount: movies.length,
          itemBuilder: (context, index, movieIndex) {
            final movie = movies[index];
            return Stack(
              children: [
                Container(
                  height: 150,
                  width:
                      MediaQuery.of(context).size.width, // Make it responsive
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://image.tmdb.org/t/p/w500/${movie.backDropPath}",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
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
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 1.7,
            autoPlayInterval: Duration(seconds: 3),
          ),
        );
      },
    );
  }
}


// import 'package:call_movies_api/model/model.dart';
// import 'package:call_movies_api/services/service.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// //import 'package:movie_app_tmdb_api/Services/services.dart';

// //import '../Model/model.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   late Future<List<Movie>> nowShowing;
//   late Future<List<Movie>> upComing;
//   late Future<List<Movie>> popularMovies;

//   @override
//   void initState() {
//     nowShowing = APIservices().getNowShowing();
//     upComing = APIservices().getUpComing();
//     popularMovies = APIservices().getPopular();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Movei App"),
//         leading: const Icon(Icons.menu),
//         centerTitle: true,
//         actions: const [
//           Icon(Icons.search_rounded),
//           SizedBox(width: 20),
//           Icon(Icons.notifications),
//           SizedBox(width: 10),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 "  Now Showing",
//                 style: TextStyle(
//                   fontWeight: FontWeight.normal,
//                   fontSize: 18,
//                   color: Colors.black,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               FutureBuilder(
//                 future: nowShowing,
//                 builder: (context, snapshot) {
//                   if (!snapshot.hasData) {
//                     return const Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   }
//                   final movies = snapshot.data!;
//                   return CarouselSlider.builder(
//                     itemCount: movies.length,
//                     itemBuilder: (context, index, movieIndex) {
//                       final movie = movies[index];
//                       return Stack(
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               image: DecorationImage(
//                                 image: NetworkImage(
//                                   "https://image.tmdb.org/t/p/original/${movie.backDropPath}",
//                                 ),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             bottom: 15,
//                             left: 0,
//                             right: 0,
//                             child: Text(
//                               movie.title,
//                               textAlign: TextAlign.center,
//                               maxLines: 1,
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           )
//                         ],
//                       );
//                     },
//                     options: CarouselOptions(
//                       autoPlay: true,
//                       enlargeCenterPage: true,
//                       aspectRatio: 1.7,
//                       autoPlayInterval: const Duration(seconds: 5),
//                     ),
//                   );
//                 },
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 "  Up Coming Movies",
//                 style: TextStyle(
//                   fontWeight: FontWeight.normal,
//                   fontSize: 18,
//                   color: Colors.black,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 10),
//                 height: 250,
//                 child: FutureBuilder(
//                   future: upComing,
//                   builder: (context, snapshot) {
//                     if (!snapshot.hasData) {
//                       return const Center(
//                         child: CircularProgressIndicator(),
//                       );
//                     }
//                     final movies = snapshot.data!;
//                     return ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: movies.length,
//                         itemBuilder: (context, index) {
//                           final movie = movies[index];
//                           return Stack(
//                             children: [
//                               Container(
//                                 width: 180,
//                                 margin:
//                                     const EdgeInsets.symmetric(horizontal: 10),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   image: DecorationImage(
//                                     image: NetworkImage(
//                                         "https://image.tmdb.org/t/p/original/${movie.backDropPath}"),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 bottom: 15,
//                                 left: 0,
//                                 right: 0,
//                                 child: Text(
//                                   movie.title,
//                                   textAlign: TextAlign.center,
//                                   maxLines: 1,
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               )
//                             ],
//                           );
//                         });
//                   },
//                 ),
//               ),
//               const SizedBox(height: 10),
//               const Text(
//                 "  Popular Movies",
//                 style: TextStyle(
//                   fontWeight: FontWeight.normal,
//                   fontSize: 18,
//                   color: Colors.black,
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.symmetric(vertical: 10),
//                 height: 250,
//                 child: FutureBuilder(
//                   future: popularMovies,
//                   builder: (context, snapshot) {
//                     if (!snapshot.hasData) {
//                       return const Center(
//                         child: CircularProgressIndicator(),
//                       );
//                     }
//                     final movies = snapshot.data!;
//                     return ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: movies.length,
//                         itemBuilder: (context, index) {
//                           final movie = movies[index];
//                           return Stack(
//                             children: [
//                               Container(
//                                 width: 180,
//                                 margin:
//                                     const EdgeInsets.symmetric(horizontal: 10),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   image: DecorationImage(
//                                     image: NetworkImage(
//                                         "https://image.tmdb.org/t/p/original/${movie.backDropPath}"),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 bottom: 15,
//                                 left: 0,
//                                 right: 0,
//                                 child: Text(
//                                   movie.title,
//                                   textAlign: TextAlign.center,
//                                   maxLines: 1,
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               )
//                             ],
//                           );
//                         });
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
