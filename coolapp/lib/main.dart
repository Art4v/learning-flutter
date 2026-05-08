import 'package:flutter/material.dart'; // gives access to prebuilt widgets and material design components
void main() {
  runApp(
    MyApp(),
  ); // entry point of the app, runs the MyApp widget which inflates to the size of whichever screen we are running on
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Flutter is Fun'),
      ),
      body: ElevatedButton(
        child: Text('About'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AboutScreen()),
          );
        },
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({ Key? key}) : super(key: key);
  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('About Page'),
      ),
    );
  }
}





// stateless widget = no dynamic data
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // build method = describes the UI
//     return MaterialApp(
//       // used as the root of the application, allowing us to configure themes and routes
//       // scaffold = visual layout structure
//       home: Scaffold(
//         // appbar widget
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: const Text('Flutter is Fun!'),
//         ),

//         body: ListView(
//           scrollDirection: Axis.horizontal,
//           children: [
//             Container(
//               color: Colors.blue,
//               width: 5000, 
//               height: 5000,
//             ),
//             Container(
//               color: Colors.orange,
//               width: 5000, 
//               height: 5000,
//             ),
//             Container(
//               color: Colors.green,
//               width: 5000, 
//               height: 5000,
//             ),
//           ],
//         )
        
        
//         // // flutter prebuilt widgets

//         // floatingActionButton: FloatingActionButton(
//         //   child: Icon(Icons.add),
//         //   onPressed: () => {print('pressed!')},
//         // ),

//         // bottomNavigationBar: BottomNavigationBar(
//         //   items: const [
//         //     BottomNavigationBarItem(
//         //       icon: Icon(Icons.home), 
//         //       label: 'Home'
//         //     ),
//         //     BottomNavigationBarItem(
//         //       icon: Icon(Icons.business), 
//         //       label: 'Business'
//         //     ),
//         //     BottomNavigationBarItem(
//         //       icon: Icon(Icons.school), 
//         //       label: 'School'
//         //     ),
//         //   ],
//         // ),

//         // drawer: Drawer(
//         //   child: Text('hey'),
//         // ),




//         // // center widget = called by right-clicking and selecting 'refactor'
//         // body: Center(
//         //   // container widget = similar to divs in html
//         //   child: Container(
//         //     child: const Text('Hello, World.'),
//         //     margin: const EdgeInsets.all(10),
//         //     padding: const EdgeInsets.all(10),
//         //   ),
//         // ),

//         // column = lay out multiple widgets vertically
//         // row = lay out multiple widgets vertically
//         // body: Row(

//         //   // main axis = parallel to flow
//         //   // cross axis = perpendicular to flow
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   crossAxisAlignment: CrossAxisAlignment.end,

//         //   children: [
//         //     // expanded = tells a child to take up any available space
//         //     Expanded(
//         //       flex: 4, // gives more space than other children
//         //       child: Icon(Icons.backpack),
//         //     ),
//         //     Icon(Icons.leaderboard),
//         //     Icon(Icons.person)
//         //   ],
//         // ),

//         // stack = allows widgets to float on top of each other
//         // body: Stack(
//         //   children: [
//         //     Container(
//         //       color: Colors.red,
//         //       width: 100,
//         //       height: 100,
//         //     ),

//         //     // positioned = similar to absolute position in css
//         //     // Positioned(
//         //     //   child: Icon(Icons.verified),
//         //     //   top: 25,
//         //     //   left: 25,
//         //     // ),
//         //     // align = align on the page
//         //     Align(
//         //       child: Icon(Icons.verified),
//         //       alignment: Alignment.center,
//         //     )

//         //   ],
//         // ),
//       ),
//     );
//   }
// }