import 'package:app/feeder_form/feeder.dart';
import 'package:app/login/login_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'LOGISHARE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  // Add your login functionality here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Icon(
                  Icons.login,
                  size: 26.0,
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              
               ListTile(
                title: const Text('My Bookings'),
                onTap: () {
                  // Handle industries navigation here
                },
              ),
              ListTile(
                title: const Text('Payments'),
                onTap: () {
                  // Handle solutions navigation here
                },
              ),
              ListTile(
                title: const Text('Services'),
                onTap: () {
                  // Handle solutions navigation here
                },
              ),
              ListTile(
                title: const Text('Transporter'),
                onTap: () {
                  // Handle industries navigation here
                },
              ),
              ListTile(
                title: const Text('Support'),
                onTap: () {
                  // Handle industries navigation here
                },
              ),
              ListTile(
                title: const Text('About'),
                onTap: () {
                  // Handle industries navigation here
                },
              ),
            ],
          ),
        ),
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
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Image.asset(
                    "assets/hello.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Quick & Reliable ',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Warehousing',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' and Logistics Solution.',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    const Text(
                      "ShipUp delivers an unparalleled customer service through dedicated customer teams, engaged people working in an agile culture, and a global footprint",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Add functionality for the first button
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FeederPage()),
                            );
                          },
                          child: const Text('FEEDER'),
                        ),
                        const SizedBox(width: 90),
                        ElevatedButton(
                          onPressed: () {
                            // Add functionality for the second button
                          },
                          child: const Text('SHIPMENT'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(5, 0, 5, 0.286),
                              blurRadius: 100,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            const Center(
                              child: Padding(
                                padding: EdgeInsets.only(right: 30),
                                child: Text(
                                  'DETAILS',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Center(
                              child: Padding(
                                padding: EdgeInsets.only(right: 250),
                                child: Text(
                                  'Source',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 400,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter the Source',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    suffixIcon: const Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Icon(Icons.location_on),
                                    ), // Source icon
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Center(
                              child: Padding(
                                padding: EdgeInsets.only(right: 220),
                                child: Text(
                                  'Destination',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 400,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter the Destination',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    suffixIcon: const Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Icon(Icons.location_on),
                                    ), // Source icon
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Center(
                              child: Padding(
                                padding: EdgeInsets.only(right: 240),
                                child: Text(
                                  'Weight',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 400,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Weight[kg]',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    // suffixIcon: const Padding(
                                    //   padding: EdgeInsets.only(right: 20),
                                    //   child: Icon(Icons.line_weight),
                                    // ), // Source icon
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                 Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginPage()),);
                              },
                              child: const Text('Check Price'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            )));
  }
}
