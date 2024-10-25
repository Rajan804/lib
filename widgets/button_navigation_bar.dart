import 'package:flutter/material.dart';

class ButtonNavigationBar extends StatefulWidget {
  const ButtonNavigationBar({super.key});

  @override
  State<ButtonNavigationBar> createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  int currentindex = 0; // Move currentindex outside the build method

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      child: BottomNavigationBar(
        backgroundColor: const Color(0xffB81736),
        type: BottomNavigationBarType.shifting,
        fixedColor: Colors.white,
        //iconSize: 40,
        currentIndex: currentindex,
        onTap: (value) {
          setState(() {
            currentindex = value; // Update currentindex here
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color(0xffB81736),
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffB81736),
            icon: Icon(Icons.bookmark_outline),
            label: "Booking",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffB81736),
            icon: Icon(Icons.help),
            label: "Help",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffB81736),
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
