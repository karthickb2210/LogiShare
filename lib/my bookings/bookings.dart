import 'package:flutter/material.dart';

class MyBookings extends StatefulWidget {
  const MyBookings({Key? key}) : super(key: key);

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'My Bookings',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
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
                Icons.notifications,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Add your other widgets here
          GestureDetector(
            onTap: () {
              // Handle button tap
            },
            child: Container(
              width: double.infinity, // Full width
              height: 50, // Example height
              color: const Color.fromARGB(255, 133, 96, 233), // Example color
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.local_shipping,
                    color: Colors.white,
                  ),
                  Text(
                    'Thu, Mar 14 06:31 AM',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '₹10000',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle button tap
            },
            child: Container(
              width: double.infinity, // Full width
              height: 50, // Example height
              color: const Color.fromARGB(255, 133, 96, 233), // Example color
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.fire_truck_sharp,
                    color: Colors.white,
                  ),
                  Text(
                    'Sun, july 14 06:01 PM',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '₹8998',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle button tap
            },
            child: Container(
              width: double.infinity, // Full width
              height: 50, // Example height
              color: const Color.fromARGB(255, 133, 96, 233), // Example color
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.local_shipping,
                    color: Colors.white,
                  ),
                  Text(
                    'Fri, Jun 14 03:31 AM',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '₹1900',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle button tap
            },
            child: Container(
              width: double.infinity, // Full width
              height: 50, // Example height
              color: const Color.fromARGB(255, 133, 96, 233), // Example color
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.local_shipping,
                    color: Colors.white,
                  ),
                  Text(
                    'Thu, Mar 14 06:31 AM',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '₹10000',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle button tap
            },
            child: Container(
              width: double.infinity, // Full width
              height: 50, // Example height
              color: const Color.fromARGB(255, 133, 96, 233), // Example color
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.local_shipping,
                    color: Colors.white,
                  ),
                  Text(
                    'Thu, Mar 14 06:31 AM',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '₹10000',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
