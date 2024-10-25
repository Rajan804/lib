import 'package:final_project/pages/home_page.dart';
import 'package:final_project/pages/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffB81736),
      resizeToAvoidBottomInset: false,
      body: Container(
        height: _size.height,
        width: _size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Welcome!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: const Text(
                "Login For Booking Your Seat",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.all(19),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: _size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login To Your Account",
                      style: TextStyle(
                        color: Color(0xffB81736),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Color.fromARGB(255, 245, 245, 245),
                            filled: true,
                            hintText: "username",
                            //  label: Text("Enter user name"),
                            hintStyle: TextStyle(color: Colors.black45)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Color.fromARGB(255, 245, 245, 245),
                            filled: true,
                            hintText: "password",
                            //label: Text("Enter password"),
                            hintStyle: TextStyle(color: Colors.black45)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffB81736),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 310),
                      child: Material(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.red, width: 0.2),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5),
                          onTap: () {},
                          child: Column(
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                  ),
                                  child: Row(children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        //color: Colors.white,
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/img/g-img.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text("Google"),
                                  ]),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            //const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Don't have an account ",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.white)),
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ));
                      },
                  ),
                  TextSpan(
                    text: " here. ",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     final deviceHeight = MediaQuery.of(context).size.height;
//     final deviceWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color(0xffB81736),
//                 Color(0xff281537),
//               ],
//             ),
//           ),
//           child: Column(
//             //crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               //upper container
//               Container(
//                 height: deviceHeight * 0.3,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 60, left: 22),
//                       child: Text(
//                         "Hello\nLog in!",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ), //upper container
//               //Lower(data) container
//               Container(
//                 height: deviceHeight * 0.7,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(35),
//                     topRight: Radius.circular(35),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(top: 150, left: 18, right: 18),
//                       child: Container(
//                         child: Column(
//                           children: [
//                             TextField(
//                               decoration: InputDecoration(
//                                 suffixIcon: Icon(Icons.check),
//                                 label: Text(
//                                   "Username",
//                                   style: TextStyle(
//                                     color: Color(0xffB81736),
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 hintText: "Enter Username",
//                               ),
//                             ),
//                             TextField(
//                               decoration: InputDecoration(
//                                 hintText: "Enter Password",
//                                 suffixIcon: Icon(Icons.visibility_off),
//                                 label: Text(
//                                   "Password",
//                                   style: TextStyle(
//                                     color: Color(0xffB81736),
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Align(
//                       child: Text("Forgate Password"),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         minimumSize: Size(100, 50),
//                         backgroundColor: Color(0xffB81736), // Background color
//                         //onPrimary: Colors.white, // Text color
//                       ),
//                       child: Text(
//                         "SignIn Now",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               //Lower (Data) container
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // import 'dart:math';

// // import 'package:flutter/material.dart';

// // class LoginPage extends StatelessWidget {
// //   const LoginPage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final deviceHeight = MediaQuery.of(context).size.height;
// //     final deviceWdth = MediaQuery.of(context).size.width;
// //     //final color = "#C7253E";
// //     return Scaffold(
// //       body: SafeArea(
// //         child: Container(
// //           height: double.infinity,
// //           width: double.infinity,
// //           color: Colors.white,
// //           child: Column(
// //             children: [
// //               //Container use for Images
// //               Padding(
// //                 padding: EdgeInsets.only(top: 80),
// //                 child: Container(
// //                   height: 140,
// //                   width: 140,
// //                   decoration: BoxDecoration(
// //                     color: Colors.white,
// //                     borderRadius: BorderRadius.all(Radius.circular(35)),
// //                     image: DecorationImage(
// //                       image: AssetImage(
// //                         "assets/img/loginIcons.jpg",
// //                       ),
// //                       fit: BoxFit.cover,
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               SizedBox(
// //                 height: 50,
// //               ),
// //               //this container use for take data
// //               Container(
// //                 margin: EdgeInsets.only(left: 20, top: 30, right: 20),
// //                 child: SafeArea(
// //                   child: Column(
// //                     children: [
// //                       Text(
// //                         "Username:",
// //                         style: TextStyle(
// //                           color: Colors.black,
// //                           fontSize: 24,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       SizedBox(
// //                         height: 10,
// //                       ),
// //                       Container(
// //                         padding: EdgeInsets.only(left: 10),
// //                         decoration: BoxDecoration(
// //                             //border: ,
// //                             color: Color.fromARGB(255, 252, 251, 251),
// //                             borderRadius: BorderRadius.circular(10),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                 color: const Color.fromARGB(200, 1, 1, 2),
// //                                 //offset: Offset.fromDirection(log2e),
// //                                 blurRadius: 5,
// //                                 spreadRadius: 1,
// //                               )
// //                             ]),
// //                         child: TextField(
// //                           decoration: InputDecoration(
// //                             border: InputBorder.none,
// //                             suffixIcon: Icon(Icons.check),
// //                             hintText: "Enter username",
// //                           ),
// //                         ),
// //                       ),
// //                       SizedBox(
// //                         height: 10,
// //                       ),
// //                       Text(
// //                         "Password:",
// //                         style: TextStyle(
// //                             color: Colors.black,
// //                             fontSize: 24,
// //                             fontWeight: FontWeight.bold),
// //                       ),
// //                       SizedBox(
// //                         height: 10,
// //                       ),
// //                       Container(
// //                         padding: EdgeInsets.only(left: 10),
// //                         decoration: BoxDecoration(
// //                             // border: Border.all(),
// //                             color: Color.fromARGB(255, 252, 251, 251),
// //                             borderRadius: BorderRadius.circular(10),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                 color: const Color.fromARGB(200, 1, 1, 2),
// //                                 //offset: Offset.fromDirection(log2e),
// //                                 blurRadius: 5,
// //                                 spreadRadius: 1,
// //                               )
// //                             ]),
// //                         child: TextField(
// //                           decoration: InputDecoration(
// //                             border: InputBorder.none,
// //                             suffixIcon: Icon(Icons.visibility_off),
// //                             hintText: "Enter Password",
// //                           ),
// //                         ),
// //                       ),
// //                       SizedBox(
// //                         height: 30,
// //                       ),
// //                       ElevatedButton(
// //                         style: ElevatedButton.styleFrom(
// //                           backgroundColor: Color.fromARGB(255, 229, 22, 53),
// //                           minimumSize: Size(120, 50), // Width: 200, Height: 50
// //                         ),
// //                         onPressed: () {},
// //                         child: Text(
// //                           "Login Now",
// //                           style: TextStyle(
// //                               color: Colors.white, fontWeight: FontWeight.bold),
// //                         ),
// //                       ),
// //                       SizedBox(
// //                         height: 45,
// //                       ),
// //                       Container(
// //                         //  height: double.infinity,
// //                         width: double.infinity,

// //                         margin: EdgeInsets.only(left: 0, right: 0),
// //                         child: Column(
// //                           children: [
// //                             Row(
// //                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                               children: [
// //                                 //Left Container
// //                                 Container(
// //                                   // width: 230,
// //                                   padding: EdgeInsets.only(
// //                                     left: 10,
// //                                   ),
// //                                   decoration: BoxDecoration(
// //                                       color: Colors.white,
// //                                       borderRadius: BorderRadius.circular(15),
// //                                       boxShadow: [
// //                                         BoxShadow(
// //                                           blurRadius: 5,
// //                                           color: const Color.fromARGB(
// //                                               200, 1, 1, 2),
// //                                         )
// //                                       ]),

// //                                   child: Column(
// //                                     children: [
// //                                       Center(
// //                                         child: Row(
// //                                           children: [
// //                                             Container(
// //                                               height: 40,
// //                                               width: 40,
// //                                               decoration: BoxDecoration(
// //                                                 color: Colors.white,
// //                                                 image: DecorationImage(
// //                                                     image: AssetImage(
// //                                                         "assets/img/g-img.png"),
// //                                                     fit: BoxFit.cover),
// //                                               ),
// //                                             ),
// //                                             Padding(
// //                                               padding:
// //                                                   EdgeInsets.only(right: 10),
// //                                               child:
// //                                                   Text("Continuou with Google"),
// //                                             ),
// //                                           ],
// //                                         ),
// //                                       )
// //                                     ],
// //                                   ),
// //                                   // height: 40,
// //                                   // width: 40,
// //                                   // decoration: BoxDecoration(
// //                                   //     color: Colors.white,
// //                                   //     image: DecorationImage(
// //                                   //         image:
// //                                   //             AssetImage("assets/img/g-img.png"),
// //                                   //         fit: BoxFit.fill)),
// //                                 ),
// //                                 //Right container
// //                                 Container(
// //                                   child: Column(
// //                                     children: [
// //                                       Text("Forgate Password"),
// //                                     ],
// //                                   ),
// //                                 ),
// //                               ],
// //                             )
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //               // SizedBox(
// //               //   height: max(100, 110),
// //               // )
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
