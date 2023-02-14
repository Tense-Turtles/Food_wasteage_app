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
      drawer: Drawer(child: Text('Hello')),
      // backgroundColor: const Color(0xFFFDFFE8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Home",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Hi Shailesh",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                )
              ]),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    for (int i = 0; i < 6; i++)
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 180,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: const ButtonBar(),
                      ),
                  ])),
            ]),
      ),

      // CustomScrollView(
      //   slivers: [
      //     SliverAppBar.large(
      //       backgroundColor: const Color.fromARGB(255, 0, 79, 45),
      //       // leading: const Icon(Icons.menu),
      //       title: const Text('F o o d  C a r e',
      //           style: TextStyle(
      //               fontStyle: FontStyle.italic,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.white)),
      //     ),
      //     for (int i = 0; i < 6; i++)
      //       SliverToBoxAdapter(
      //         child: Padding(
      //           padding: const EdgeInsets.only(
      //             top: 20.0,
      //             left: 20,
      //             right: 20,
      //           ),
      //           child: ClipRRect(
      //             borderRadius: BorderRadius.circular(10),
      //             child: Container(
      //               color: const Color.fromARGB(255, 204, 255, 146),
      //               height: 150,
      //             ),
      //           ),
      //         ),
      //       ),
      //   ],
      // ),
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
