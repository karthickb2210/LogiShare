import 'package:animate_do/animate_do.dart';
import 'package:app/signup/customer_screen.dart';
import 'package:app/signup/transporter_screen.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromARGB(255, 140, 99, 220),
          Color.fromARGB(255, 133, 96, 233),
          Color.fromARGB(255, 155, 107, 221),
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 80,
            ),
            const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "LOGISHARE",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    )
                  ],
                )),
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(children: <Widget>[
                          const SizedBox(
                            height: 60,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FadeInUp(
                              duration: const Duration(milliseconds: 1500),
                              child: const Text(
                                "CUSTOMER or TRANSPORTER",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          FadeInUp(
                              duration: const Duration(milliseconds: 1600),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CustomerPage()));
                                },
                                height: 50,
                                // margin: EdgeInsets.symmetric(horizontal: 50),
                                color: const Color.fromARGB(255, 140, 99, 220),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                // decoration: BoxDecoration(
                                // ),
                                child: const Center(
                                  child: Text(
                                    "CUSTOMER",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 40,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          FadeInUp(
                              duration: const Duration(milliseconds: 1600),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TransporterPage()));
                                },
                                height: 50,
                                // margin: EdgeInsets.symmetric(horizontal: 50),
                                color:  const Color.fromARGB(255, 140, 99, 220),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                // decoration: BoxDecoration(
                                // ),
                                child: const Center(
                                  child: Text(
                                    "TRANSPORTER",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                        ]))))
          ],
        ),
      ),
    );
  }
}
