import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyCard(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/Avatar.jpg'),
          ),
          Text(
            "John ABC",
            style: GoogleFonts.pacifico(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          Text(
            "Flutter Developer",
            style: GoogleFonts.sourceSansPro(
              fontSize: 20,
              letterSpacing: 2.5,
              color: Colors.teal.shade100,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
            width: 150,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 25,
            ),
            child: ListTile(
              title: Text(
                '+91 1234567890',
                style: GoogleFonts.sourceSansPro(
                  fontSize: 20,
                  color: Colors.teal.shade900,
                ),
              ),
              leading: const Icon(
                Icons.phone,
                color: Colors.teal,
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 25,
            ),
            child: ListTile(
              title: Text(
                'sampleemail@email.com',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20, color: Colors.teal.shade900),
              ),
              leading: const Icon(
                Icons.email,
                color: Colors.teal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
