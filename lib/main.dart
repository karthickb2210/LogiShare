import 'package:app/my%20bookings/bookingdetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(fontFamily: 'Neue'),
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {'login':(context) => const BookingDetails()}
    );
  }
}


