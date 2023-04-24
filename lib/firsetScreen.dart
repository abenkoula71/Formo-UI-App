import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tr/screen%201.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://github.com/abenkoula71/new-project/blob/main/pexels-rfstudio-3825540.jpg?raw=true'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 250,
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            alignment: Alignment.bottomCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Monitor , Manage Your Land and Improve Its Efficiency From The',
                  
                  style: TextStyle(fontSize: 32,),
                ),
                Text(
                  'Comfort Of Home',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  alignment: Alignment.center,
                  child: Text(
                    'LET\'S MONITOR >',
                    style: TextStyle(
                        color: Color.fromARGB(162, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
