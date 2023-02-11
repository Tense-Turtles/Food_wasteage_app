import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFFE8),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: const Color.fromARGB(255, 0, 79, 45),
            leading: const Icon(Icons.menu),
            title: const Text('F o o d  C a r e',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          for (int i = 0; i < 6; i++)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20,
                  right: 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: const Color.fromARGB(255, 204, 255, 146),
                    height: 150,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
    // return Scaffold(
    //   // appBar: AppBar(
    //   //   title: Text(
    //   //     'Food Care',
    //   //     style: TextStyle(
    //   //         fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
    //   //   ),
    //   // ),
    //   body:CustomScrollView(
    //     slivers: [SliverAppBar.large(leading: IconButton,)],
    //   ),
    //   // Center(
    //   //   child: Column(
    //   //     mainAxisAlignment: MainAxisAlignment.center,
    //   //     children: <Widget>[
    //   //       const Text(
    //   //         'this is still in procduction',
    //   //       ),
    //   //     ],
    //   //   ),
    //   // ),
    // );
  }
}
