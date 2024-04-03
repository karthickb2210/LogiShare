import 'package:animate_do/animate_do.dart';
import 'package:app/home.dart/home.dart';
import 'package:app/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 133, 96, 233)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Center(
                  child: Image.asset(
                    "log1.png",
                    width: 200, 
                    height: 200, 
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 30,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(132, 70, 231, 0.298),
                                  blurRadius: 40,
                                  offset: Offset(0, 10))
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              const SizedBox(height: 20),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 220),
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 10),
                                          child: Text(
                                            'PhoneNumber',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
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
                                    decoration: InputDecoration(
                                      hintText: ' ',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      suffixIcon: const Padding(
                                        padding: EdgeInsets.only(
                                          right: 20,
                                        ),
                                        child: Icon(Icons.phone_android),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 5,
                                              horizontal: 20), 
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 260),
                                        child: Text(
                                          'Password',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
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
                                    decoration: InputDecoration(
                                      hintText: '',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      suffixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: IconButton(
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
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 20),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: TextButton(
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(left: 200),
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage()),);
                          },
                          height: 50,
                          color: const Color.fromARGB(255, 243, 202, 66),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      FadeInUp(
                          duration: const Duration(milliseconds: 1500),
                          child: const Text("Or")),
                      const SizedBox(height: 30),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: Center(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Handle Google button tap
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 45),
                                  child: SvgPicture.asset(
                                    'assets/google.svg', 
                                    height: 40, 
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  width: 75), 
                              GestureDetector(
                                onTap: () {
                                  // Handle Apple button tap
                                },
                                child: SvgPicture.asset(
                                  'assets/apple.svg', 
                                  height: 40, 
                                ),
                              ),
                              const SizedBox(
                                  width: 75), 
                              GestureDetector(
                                onTap: () {
                                  // Handle Facebook button tap
                                },
                                child: SvgPicture.asset(
                                  'assets/facebook.svg', 
                                  height: 40, 
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()),
                            );
                          },
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                    text: "Don't have an account? ",
                                    style: TextStyle(color: Colors.grey)),
                                TextSpan(
                                    text: "Signup",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 245, 222, 13))),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
