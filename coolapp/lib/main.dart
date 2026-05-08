import 'package:flutter/material.dart'; // gives access to prebuilt widgets and material design components

void main() {
  runApp(
    MyApp(),
  ); // entry point of the app, runs the MyApp widget which inflates to the size of whichever screen we are running on
}

// stateless widget = no dynamic data
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // build method = describes the UI
    return MaterialApp(
      // used as the root of the application, allowing us to configure themes and routes
      // scaffold = visual layout structure
      home: Scaffold(
        // appbar widget
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is Fun!'),
        ),

        // center widget = called by right-clicking and selecting 'refactor'
        body: Center(
          // container widget = similar to divs in html
          child: Container(
            child: const Text('Hello, World.'),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
