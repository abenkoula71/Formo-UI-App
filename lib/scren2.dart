import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tr/screen%201.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black26))),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back,',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'abenkoula71',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLe5PABjXc17cjIMOibECLM7ppDwMmiDg6Dw&usqp=CAU'))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  ...List.generate(
                      6,
                      (index) => Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://github.com/abenkoula71/new-project/blob/main/pexels-cottonbro-studio-4937197.jpg?raw=true'),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Empty Piece of Land',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          letterSpacing: 1.1,
                                          color: Color.fromARGB(203, 0, 0, 0)),
                                    ),
                                    Text(
                                      'Last check 2 min ago',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet<int>(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return const PopUp();
                              },
                              isScrollControlled: true)
                          .then((value) => setState(() {}));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      alignment: Alignment.center,
                      child: Text(
                        '+ ADD LAND',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                'Articles >',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://github.com/abenkoula71/new-project/blob/main/pexels-isaw-company-955733.jpg?raw=true'),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home),
            Icon(Icons.map_outlined),
            Icon(Icons.message_outlined),
            Icon(Icons.settings_outlined),
          ],
        ),
      ),
    );
  }
}
