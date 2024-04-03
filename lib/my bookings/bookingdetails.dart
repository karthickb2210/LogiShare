import 'package:flutter/material.dart';


class BookingDetails extends StatefulWidget {
  const BookingDetails({super.key});

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Booking Details',
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
       
      ),
      body:  Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 150),
            child: Text("Thu, Mar 14 06:31 AM",
            style: TextStyle(fontSize: 20,
            color: Colors.black54),),
          ),
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.only(right: 260),
            child: Text("You Rated",
            style: TextStyle(fontSize: 20,
            color: Colors.black54),),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(Icons.star,
                        color: Colors.amber[400],),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(Icons.star,
                        color: Colors.amber[400],),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(Icons.star,
                        color: Colors.amber[400],),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Icon(Icons.star_border_outlined),
                      ),
                      const Icon(Icons.star_border_outlined),
                    ],
                  ),
          ),
          const SizedBox(height: 20,),
         const Padding(
           padding: EdgeInsets.only(left: 40),
           child: Row(
             children: [
                 Icon(Icons.local_shipping,
                 size: 50,),
               Padding(
                 padding: EdgeInsets.only(left: 40),
                 child: Text("Truck Type - Box Truck",
                 style: TextStyle(fontWeight: FontWeight.bold),),
               )
             ],
           ),
         ),
         const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.only(right: 200),
            child: Text("Price   - ₹10000",
            style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
}
}