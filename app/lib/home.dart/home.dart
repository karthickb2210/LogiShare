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
              title: const Text('Home'),
              onTap: () {
                // Handle home navigation here (e.g., Navigator.pop(context))
              },
            ),
            ListTile(
              title: const Text('Services'),
              onTap: () {
                // Handle services navigation here
              },
            ),
            ListTile(
              title: const Text('Solutions'),
              onTap: () {
                // Handle solutions navigation here
              },
            ),
            ListTile(
              title: const Text('Industries'),
              onTap: () {
                // Handle industries navigation here
              },
            ),
            ListTile(
              title: const Text('Transporter'),
              onTap: () {
                // Handle industries navigation here
              },
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange.shade400,
              Colors.orange.shade800,
              Colors.orange.shade500,
            ],
          ),
        ),
        child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/Main page.jpg",
              ),
            ),
            const SizedBox(height: 10,),
            RichText(
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
            const SizedBox(height: 10,),
            const Column(
              children: [
                Text("ShipUp delivers an unparalleled customer service through dedicated customer teams, engaged people working in an agile culture, and a global footprint",
                style: TextStyle(color: Colors.white),)
              ],
            
            )
          ],
        ),
      ),
    ));
  }
}