import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      
        appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        "FoodCare",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
    body:  Padding(
      
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: size.height * 0.25,
              decoration: BoxDecoration(
                  color: Color.fromARGB(0,0,0,0),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(children: [
                Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: Image.asset('',
                        height: 100, width: 180)),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: Column(
                    children: [
                      Text(
                        '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ))
              ]),
            )
          ],
        )),
    );
  }
}
