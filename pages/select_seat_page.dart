import 'package:flutter/material.dart';

void main() {
  runApp(SeatSelectionApp());
}

class SeatSelectionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Seat Selection with Payment'),
        ),
        body: SafeArea(
          child: SeatSelectionScreen(),
        ),
      ),
    );
  }
}

class SeatSelectionScreen extends StatefulWidget {
  @override
  _SeatSelectionScreenState createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
  // Rows for seats
  final List<String> rows = ['A', 'B', 'C', 'D', 'E', 'F', 'J'];
  // Columns for seats
  final List<int> columns = [1, 2, 3, 4, 5, 6, 7];

  // Seat categories with prices
  Map<String, int> seatCategories = {
    'Normal': 150,
    'Executive': 250,
    'Premium': 350,
  };

  // Selected seats and their prices
  List<String> selectedSeats = [];
  int totalPrice = 0;

  // Determine seat category based on the row
  String getSeatCategory(String row) {
    if (['A', 'B'].contains(row)) return 'Normal';
    if (['C', 'D'].contains(row)) return 'Executive';
    return 'Premium';
  }

  // Function to toggle seat selection
  void selectSeat(String seat, String category) {
    setState(() {
      if (selectedSeats.contains(seat)) {
        selectedSeats.remove(seat);
        totalPrice -= seatCategories[category]!;
      } else {
        selectedSeats.add(seat);
        totalPrice += seatCategories[category]!;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Select your seat(s)',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          // Seat grid with Expanded to avoid overflow
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns.length, // Number of seats in each row
                childAspectRatio:
                    1.2, // Adjusted to ensure seat layout fits well
              ),
              itemCount: rows.length * columns.length, // Total number of seats
              itemBuilder: (context, index) {
                int rowIndex = index ~/ columns.length; // Row index
                int columnIndex = index % columns.length; // Column index
                String seat =
                    "${rows[rowIndex]}${columns[columnIndex]}"; // Seat label
                String category =
                    getSeatCategory(rows[rowIndex]); // Seat category

                return GestureDetector(
                  onTap: () => selectSeat(seat, category),
                  child: Container(
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: selectedSeats.contains(seat)
                          ? Colors.green
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            seat,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            category,
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          ),
                          Text(
                            '\$${seatCategories[category]}',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          // Display selected seats and total price
          Text(
            'Selected Seats: ${selectedSeats.join(', ')}',
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
          SizedBox(height: 10),
          Text(
            'Total Price: \$${totalPrice.toString()}',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
