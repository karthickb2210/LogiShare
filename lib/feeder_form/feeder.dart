import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class FeederPage extends StatelessWidget {
  const FeederPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Feeder Form',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
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
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
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
                      const SizedBox(height: 10),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(162, 75, 212, 0.298),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 20),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 280),
                                        child: Text(
                                          'Source*',
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
                                height: 20,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 250),
                                        child: Text(
                                          'Destination*',
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
                                    decoration: InputDecoration(
                                      hintText: 'Enter the Destination',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            30), // Adjust border radius here
                                      ),
                                      suffixIcon: const Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.location_off),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 220),
                                        child: Text(
                                          'Space Available*',
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
                                    decoration: InputDecoration(
                                      hintText: 'Enter the available space',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            30), // Adjust border radius here
                                      ),
                                      suffixIcon: const Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.space_dashboard),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 250),
                                        child: Text(
                                          'Vehicle Type*',
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
                                    decoration: InputDecoration(
                                      hintText: 'Type',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            30), // Adjust border radius here
                                      ),
                                      suffixIcon: const Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.fire_truck),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 190),
                                        child: Text(
                                          'Estimated Arrival Time',
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
                                    decoration: InputDecoration(
                                      hintText: 'Time',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            30), // Adjust border radius here
                                      ),
                                      suffixIcon: const Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.access_time),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Center(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 295),
                                        child: Text(
                                          'Route*',
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
                                    decoration: InputDecoration(
                                      hintText: 'Route',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            30), // Adjust border radius here
                                      ),
                                      suffixIcon: const Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Icon(Icons.route),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      FadeInUp(
                          duration: const Duration(milliseconds: 1400),
                          child: SizedBox(
                            width: 200,
                            child: MaterialButton(
                              onPressed: () {
                                // Your button action
                              },
                              height: 60,
                              padding:
                                  EdgeInsets.zero, // Remove any default padding
                              color: const Color.fromARGB(255, 140, 99, 220),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(
                                child: Text(
                                  "SendForm",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 243, 243, 243),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
