import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
          weight: 25,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        actions: [],
        backgroundColor: Color(0xffB81736),
        title: Center(
          child: Text(
            "Payment Now",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        //Main Container
        child: Container(
          child: Column(
            children: [
              //this container for ticket book details
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Confirm Date - 09:08:2024",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Container(
                      //     child: Column(
                      //   children: [
                      //     Row(
                      //       //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         Container(
                      //           child: Column(
                      //             children: [Text("From - 10:30AM")],
                      //           ),
                      //         ),
                      //         Container(
                      //           child: Column(
                      //             children: [Text("To - 12:30AM")],
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ))
                    ],
                  ),
                ),
              ),
              //this container for Payment
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
