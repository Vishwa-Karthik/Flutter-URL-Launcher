import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ("U R L - L A U N C H E R"),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = 'https://github.com/Vishwa-Karthik';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("U R L - L A U N C H E R"),
      ),
      body: Center(
          child: MaterialButton(
        color: Colors.deepPurple[400],
        onPressed: () async {
          if (await canLaunchUrlString(url)) {
            await launchUrlString(url);
          } else {
            throw "Could not";
          }
        },
        child: const Text(
          "S H A R E",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
