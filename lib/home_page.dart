import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: Text('Hello')),
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
                        margin: const EdgeInsets.all(10),
                        height: 180,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: const ButtonBar(),
                      ),
                  ])),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Tab(
                            text: 'Find Food',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Tab(text: 'Collect Waste'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 300,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView(
                      children: [
                        ListTile(
                          leading: Icon(Icons.food_bank),
                          title: Text('Hostel-1'),
                        ),
                        ListTile(
                          leading: Icon(Icons.food_bank),
                          title: Text('Hostel-1'),
                        ),
                        ListTile(
                          leading: Icon(Icons.food_bank),
                          title: Text('Hostel-1'),
                        ),
                        // Add more ListTiles as needed
                      ],
                    ),
                    ListView(
                      children: [
                        ListTile(
                          leading: Icon(Icons.food_bank),
                          title: Text('Hostel-1'),
                        ),
                        ListTile(
                          leading: Icon(Icons.food_bank),
                          title: Text('Hostel-1'),
                        ),
                        ListTile(
                          leading: Icon(Icons.food_bank),
                          title: Text('Hostel-1'),
                        ),
                        // Add more ListTiles as needed
                      ],
                    )
                  ],
                ),
              )
              //const TabBarView(children: [Center(child: Text('hello'))])
            ]),
      ),
    );
  }
}
