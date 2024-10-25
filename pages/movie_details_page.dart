import 'package:final_project/widgets/button_navigation_bar.dart';
import 'package:flutter/material.dart';

class MovieDetailsPage extends StatefulWidget {
  const MovieDetailsPage({super.key});

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movie Details",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: ButtonNavigationBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 17, right: 17, top: 0),
              child: Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            height: _size.height * 0.24,
                            decoration: BoxDecoration(
                              //  color: Colors.amber,
                              image: DecorationImage(
                                image: AssetImage("assets/img/stree2.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            // child: Icon(Icons.place_rounded),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: Icon(
                            Icons.play_circle_filled_outlined,
                            color: Colors.white.withOpacity(0.7),
                            size: 80,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //for week
                    Padding(
                      padding: EdgeInsets.only(left: 17, right: 17, bottom: 12),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: 4, left: 5, right: 5, bottom: 4),
                              width: 50,
                              // height: 25,
                              decoration: BoxDecoration(
                                color: Color(0xffB81736),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "9",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    "FIR",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Date
                            Container(
                              padding: EdgeInsets.only(
                                  top: 4, left: 5, right: 5, bottom: 4),
                              width: 50,
                              // height: 25,
                              decoration: BoxDecoration(
                                color: Color(0xffB81736),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "10",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    "SAT",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Text("Language"),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 4, left: 5, right: 5, bottom: 4),
                              width: 50,
                              // height: 25,
                              decoration: BoxDecoration(
                                color: Color(0xffB81736),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "11",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    "SUN",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 4, left: 5, right: 5, bottom: 4),
                              width: 50,
                              // height: 25,
                              decoration: BoxDecoration(
                                color: Color(0xffB81736),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "12",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    "MON",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 4, left: 5, right: 5, bottom: 4),
                              width: 50,
                              // height: 25,
                              decoration: BoxDecoration(
                                color: Color(0xffB81736),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "13",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    "TUE",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), //for week
                    //for Take details from user
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 17, right: 17, bottom: 12),
                      child: Container(
                        child: Column(
                          children: [
                            //1
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 4, left: 12, right: 4, bottom: 4),
                                    width: 120,
                                    // height: 25,
                                    decoration: BoxDecoration(
                                      color: Color(0xffB81736),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.filter_list,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Filter",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Text("Language"),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 4, left: 12, right: 12, bottom: 4),
                                    // width: 130,
                                    // height: 25,
                                    decoration: BoxDecoration(
                                      color: Color(0xffB81736),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_downward_sharp,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Language",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            //2
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 4, left: 12, right: 4, bottom: 4),
                                    width: 120,
                                    // height: 25,
                                    decoration: BoxDecoration(
                                      color: Color(0xffB81736),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_drop_down_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "10:30",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Text("Language"),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 4, left: 12, right: 12, bottom: 4),
                                    // width: 130,
                                    // height: 25,
                                    decoration: BoxDecoration(
                                      color: Color(0xffB81736),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_drop_down_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Location",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            //3
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 4, left: 12, right: 4, bottom: 4),
                                    width: 120,
                                    // height: 25,
                                    decoration: BoxDecoration(
                                      color: Color(0xffB81736),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_drop_down_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Age",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Text("Language"),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 4, left: 12, right: 12, bottom: 4),
                                    // width: 130,
                                    // height: 25,
                                    decoration: BoxDecoration(
                                      color: Color(0xffB81736),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_drop_down_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Member",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), //for Take details from user
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // side:,
                        backgroundColor: Color(0xffB81736),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "BOOK NOW",
                            style: TextStyle(
                              //  fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
