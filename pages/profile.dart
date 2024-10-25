import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePF =
        "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg";

    final imageBG =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQezQ4x-eG44rxS82WyqPJkt4Lf21M1U491rg&s";
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.maxFinite,
              child: Image.network(
                imageBG,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 150,
              right: 30,
              bottom: 30,
              left: 30,
              child: Card(
                elevation: 0.8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 90),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Shamantha Joshi",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "New York, United State",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Web Produce - Web Specialist",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text("Columbia University - New York "),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "65",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                  Text(
                                    "Friends",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "43",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                  Text(
                                    "Post",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "21",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                  Text(
                                    "Comments",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pinkAccent,
                          ),
                          onPressed: () {},
                          child: Container(
                            height: 50,
                            width: 80,
                            child: Center(
                              child: Text(
                                "Show more",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: MediaQuery.of(context).size.width / 2 - 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.network(
                  imagePF,
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 175,
              left: 60,
              child: Row(
                children: [
                  Icon(
                    Icons.people_alt_rounded,
                    color: Colors.pink,
                  ),
                  Text(
                    "comment",
                    style: TextStyle(color: Colors.pinkAccent),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 175,
              left: MediaQuery.of(context).size.width - 150,
              child: Row(
                children: [
                  Icon(
                    Icons.chat,
                    color: Colors.pink,
                  ),
                  Text(
                    "Messages",
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
