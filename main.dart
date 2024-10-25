//import 'package:final_project/admin/admin_home_page.dart';
import 'package:final_project/APIsCall/screen/top_movies_screen.dart';
import 'package:final_project/APIsCall/screen/trending_movies_screen.dart';
import 'package:final_project/pages/home_page.dart';
import 'package:final_project/pages/login_page.dart';
import 'package:final_project/pages/payment_page.dart';
import 'package:final_project/pages/profile.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LoginPage(),
      //  home:SignupPage(),
      //home:SignupPage()
      home: HomePage(),
      // home: MovieDetailsPage(),
      //  home: AdminHomePage(),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(SeatSelectionApp());
// }

// class SeatSelectionApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SeatSelectionScreen(),
//     );
//   }
// }

// class SeatSelectionScreen extends StatefulWidget {
//   @override
//   _SeatSelectionScreenState createState() => _SeatSelectionScreenState();
// }

// class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
//   List<List<int>> seatStatus = [
//     // 0 = available, 1 = selected, 2 = occupied
//     [0, 0, 0, 0, 2, 2, 0, 0],
//     [0, 0, 0, 0, 2, 2, 0, 0],
//     [0, 0, 0, 0, 2, 2, 0, 0],
//     [0, 2, 0, 0, 2, 2, 0, 0],
//     [0, 0, 0, 0, 2, 0, 1, 0],
//     [1, 0, 0, 2, 2, 0, 0, 0],
//     [0, 0, 1, 0, 0, 0, 0, 2],
//   ];

//   // Toggle seat selection
//   void selectSeat(int row, int col) {
//     setState(() {
//       if (seatStatus[row][col] == 0) {
//         seatStatus[row][col] = 1; // Select seat if available
//       } else if (seatStatus[row][col] == 1) {
//         seatStatus[row][col] = 0; // Deselect seat if already selected
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Seats'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 20),
//           Center(
//             child: Text(
//               'SCREEN THIS WAY',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(height: 20),
//           // Seat Map
//           Expanded(
//             child: ListView(
//               children: [
//                 seatRow('NORMAL', 150, 0),
//                 seatRow('EXECUTIVE', 200, 2),
//                 seatRow('PREMIUM', 300, 4),
//               ],
//             ),
//           ),
//           // Proceed Button
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 // Handle proceed action
//               },
//               child: Text('PROCEED'),
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
//                 //  primary: Colors.blueAccent,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget seatRow(String type, int price, int startIndex) {
//     return Column(
//       children: [
//         Text('$type (₱ $price.00)', style: TextStyle(fontSize: 16)),
//         SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: List.generate(8, (index) {
//             int rowIndex = startIndex + (index ~/ 8);
//             int colIndex = index % 8;
//             return GestureDetector(
//               onTap: () => selectSeat(rowIndex, colIndex),
//               child: Container(
//                 margin: EdgeInsets.all(4),
//                 width: 30,
//                 height: 30,
//                 decoration: BoxDecoration(
//                   color: seatStatus[rowIndex][colIndex] == 0
//                       ? Colors.grey[300]
//                       : seatStatus[rowIndex][colIndex] == 1
//                           ? Colors.red
//                           : Colors.orange,
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//               ),
//             );
//           }),
//         ),
//         SizedBox(height: 10),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(SeatBookingApp());
// }

// class SeatBookingApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SeatSelectionScreen(),
//     );
//   }
// }

// class SeatSelectionScreen extends StatefulWidget {
//   @override
//   _SeatSelectionScreenState createState() => _SeatSelectionScreenState();
// }

// class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
//   // Seat layout: 0 = available, 1 = selected, 2 = occupied
//   List<List<int>> seatStatus = [
//     [0, 0, 2, 0, 0],
//     [0, 1, 0, 2, 0],
//     [0, 0, 0, 0, 0],
//     [2, 0, 0, 1, 0],
//   ];

//   // Seat category prices
//   Map<int, String> seatCategories = {
//     0: 'Normal',
//     1: 'Premium',
//     2: 'VIP',
//   };

//   // Category price mapping
//   Map<String, double> seatPrices = {
//     'Normal': 100.0,
//     'Premium': 150.0,
//     'VIP': 200.0,
//   };

//   // Selected seats and their categories
//   Map<int, Map<int, String>> seatCategoryAssignment = {
//     0: {0: 'Normal', 1: 'Normal', 2: 'VIP', 3: 'Normal', 4: 'Normal'},
//     1: {0: 'Normal', 1: 'Premium', 2: 'Normal', 3: 'VIP', 4: 'Normal'},
//     2: {0: 'Normal', 1: 'Normal', 2: 'Normal', 3: 'Normal', 4: 'Normal'},
//     3: {0: 'VIP', 1: 'Normal', 2: 'Normal', 3: 'Premium', 4: 'Normal'},
//   };

//   double totalPrice = 0;

//   // Toggle seat selection
//   void selectSeat(int row, int col) {
//     setState(() {
//       if (seatStatus[row][col] == 0) {
//         seatStatus[row][col] = 1; // Select seat
//         totalPrice += seatPrices[seatCategoryAssignment[row]![col]]!;
//       } else if (seatStatus[row][col] == 1) {
//         seatStatus[row][col] = 0; // Deselect seat
//         totalPrice -= seatPrices[seatCategoryAssignment[row]![col]]!;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Theater Seat Booking'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: 20),
//           Center(
//             child: Text(
//               'SCREEN',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(height: 20),
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 for (int row = 0; row < seatStatus.length; row++)
//                   buildSeatRow(row),
//               ],
//             ),
//           ),
//           // Display the total price
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Text(
//                   'Total Price: ₱ ${totalPrice.toStringAsFixed(2)}',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Handle proceed action
//                     print("Proceed to Payment");
//                   },
//                   child: Text('Proceed'),
//                   style: ElevatedButton.styleFrom(
//                     padding:
//                         EdgeInsets.symmetric(vertical: 15, horizontal: 100),
//                     //  primary: Colors.blueAccent,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildSeatRow(int row) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         for (int col = 0; col < seatStatus[row].length; col++)
//           GestureDetector(
//             onTap: () => selectSeat(row, col),
//             child: Container(
//               margin: EdgeInsets.all(4),
//               width: 40,
//               height: 40,
//               decoration: BoxDecoration(
//                 color: seatStatus[row][col] == 0
//                     ? Colors.grey[300]
//                     : seatStatus[row][col] == 1
//                         ? Colors.red
//                         : Colors.orange,
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               child: Center(
//                 child: Text(
//                   '${seatCategoryAssignment[row]![col]![0]}', // Show first letter of the category (N, P, V)
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }
