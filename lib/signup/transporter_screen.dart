import 'package:animate_do/animate_do.dart';
import 'package:app/login/login_screen.dart';
import 'package:flutter/material.dart';

class TransporterPage extends StatefulWidget {
  const TransporterPage({super.key});

  @override
  State<TransporterPage> createState() => _TransporterPageState();
}

class _TransporterPageState extends State<TransporterPage> {
  bool _obscurePassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 140, 99, 220),
              Color.fromARGB(255, 133, 96, 233),
              Color.fromARGB(255, 155, 107, 221),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: const Text(
                          "LOGISHARE",
                          style: TextStyle(
                            color: Color.fromARGB(255, 245, 245, 245),
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: FadeInUp(
                        duration: const Duration(milliseconds: 1300),
                        child: const Text(
                          "Welcome to Transporter Signup :)",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 60,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 140, 99, 220),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(
                                height: 20,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 260),
                                        child: Text(
                                          'Username',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter the Name',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.person),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 290),
                                        child: Text(
                                          'Phone',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter the Mobile Number',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.phone_android),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 300),
                                        child: Text(
                                          'Email',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const SizedBox(
                                width: 400,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter the Email ID',
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.email_outlined),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 270),
                                        child: Text(
                                          'Password',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 400,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: TextField(
                                    obscureText: _obscurePassword,
                                    decoration: InputDecoration(
                                      hintText: 'Enter the Password',
                                      border: const OutlineInputBorder(),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _obscurePassword
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _obscurePassword =
                                                !_obscurePassword;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 210),
                                        child: Text(
                                          'Confirm Password',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 400,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: TextField(
                                    obscureText: _obscurePassword,
                                    decoration: InputDecoration(
                                      hintText: 'Confirm Password',
                                      border: const OutlineInputBorder(),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _obscurePassword
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _obscurePassword =
                                                !_obscurePassword;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // FadeInUp(
                              //   duration: const Duration(milliseconds: 1500),
                              //   child: const Text(
                              //     "User name",
                              //     style: TextStyle(
                              //       color: Colors.grey,
                              //       fontWeight: FontWeight.bold,
                              //       fontSize: 20.0,
                              //     ),
                              //   ),
                              // ),
                              // Container(
                              //   padding: const EdgeInsets.all(10),
                              //   decoration: BoxDecoration(
                              //     border: Border(
                              //       bottom: BorderSide(
                              //         color: Colors.grey.shade200,
                              //       ),
                              //     ),
                              //   ),
                              //   child: const TextField(
                              //     decoration: InputDecoration(
                              //       hintText: "Name",
                              //       hintStyle: TextStyle(color: Colors.grey),
                              //       border: InputBorder.none,
                              //     ),
                              //   ),
                              // ),
                              // Add other TextFields similarl
                              // FadeInUp(
                              //   duration: const Duration(milliseconds: 1500),
                              //   child: const Text(
                              //     "Phone",
                              //     style: TextStyle(
                              //       color: Colors.grey,
                              //       fontWeight: FontWeight.bold,
                              //       fontSize: 20.0,
                              //     ),
                              //   ),
                              // ),
                              // Container(
                              //   padding: const EdgeInsets.all(10),
                              //   decoration: BoxDecoration(
                              //     border: Border(
                              //       bottom: BorderSide(
                              //         color: Colors.grey.shade200,
                              //       ),
                              //     ),
                              //   ),
                              //   child: const TextField(
                              //     decoration: InputDecoration(
                              //       hintText: "Enter the Mobile Number",
                              //       hintStyle: TextStyle(color: Colors.grey),
                              //       border: InputBorder.none,
                              //     ),
                              //   ),
                              // ),
                              // FadeInUp(
                              //   duration: const Duration(milliseconds: 1500),
                              //   child: const Text(
                              //     "Email",
                              //     style: TextStyle(
                              //       color: Colors.grey,
                              //       fontWeight: FontWeight.bold,
                              //       fontSize: 20.0,
                              //     ),
                              //   ),
                              // ),
                              // Container(
                              //   padding: const EdgeInsets.all(10),
                              //   decoration: BoxDecoration(
                              //     border: Border(
                              //       bottom: BorderSide(
                              //         color: Colors.grey.shade200,
                              //       ),
                              //     ),
                              //   ),
                              //   child: const TextField(
                              //     decoration: InputDecoration(
                              //       hintText: "Enter the Email ID",
                              //       hintStyle: TextStyle(color: Colors.grey),
                              //       border: InputBorder.none,
                              //     ),
                              //   ),
                              // ),
                              // FadeInUp(
                              //   duration: const Duration(milliseconds: 1500),
                              //   child: const Text(
                              //     "Password",
                              //     style: TextStyle(
                              //       color: Colors.grey,
                              //       fontWeight: FontWeight.bold,
                              //       fontSize: 20.0,
                              //     ),
                              //   ),
                              // ),
                              // Container(
                              //   padding: const EdgeInsets.all(10),
                              //   decoration: BoxDecoration(
                              //     border: Border(
                              //       bottom: BorderSide(
                              //         color: Colors.grey.shade200,
                              //       ),
                              //     ),
                              //   ),
                              //   child: const TextField(
                              //     decoration: InputDecoration(
                              //       hintText: "Enter the Password",
                              //       hintStyle: TextStyle(color: Colors.grey),
                              //       border: InputBorder.none,
                              //     ),
                              //   ),
                              // ),
                              // FadeInUp(
                              //   duration: const Duration(milliseconds: 1500),
                              //   child: const Text(
                              //     "Confirm Password",
                              //     style: TextStyle(
                              //       color: Colors.grey,
                              //       fontWeight: FontWeight.bold,
                              //       fontSize: 20.0,
                              //     ),
                              //   ),
                              // ),
                              // Container(
                              //   padding: const EdgeInsets.all(10),
                              //   decoration: BoxDecoration(
                              //     border: Border(
                              //       bottom: BorderSide(
                              //         color: Colors.grey.shade200,
                              //       ),
                              //     ),
                              //   ),
                              //   child: const TextField(
                              //     decoration: InputDecoration(
                              //       hintText: "Confirm Password",
                              //       hintStyle: TextStyle(color: Colors.grey),
                              //       border: InputBorder.none,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: MaterialButton(
                          onPressed: () {},
                          height: 50,
                          color:const Color.fromARGB(255, 140, 99, 220),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                          child: const Text(
                            'Already have an account? Login',
                            style: TextStyle(color: Colors.grey),
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
      ),
    );
  }
}
