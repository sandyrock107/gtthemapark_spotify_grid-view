import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gtthemepark/listview.dart';
import 'dart:math';

class Web extends StatefulWidget {
  const Web({Key? key}) : super(key: key);

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[100],
          leading: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black87,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.mic,
                color: Colors.black87,
              ),
            )
          ],
          title: Container(
            height: 30,
            width: 300,
            color: Colors.white,
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black87,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Search Amazon.in",
                  style: TextStyle(color: Colors.black45, fontSize: 18),
                ),
                SizedBox(
                  width: 35,
                ),
                Icon(
                  Icons.account_box,
                  color: Colors.black38,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40,
                width: 400,
                color: Colors.cyan[50],
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Selact a location to see product availability",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: 400,
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      "Vist the OnePlus Store \n"
                      "Oneplus Nord 2T 5G (Jade Fog,8GB  RAM,123 GB Storage",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            height: 50,
                            width: 50,
                            //color: Colors.green,
                            child: Icon(
                              Icons.favorite_border_sharp,
                              size: 35,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Container(
                            height: 50,
                            width: 50,
                            //color: Colors.cyanAccent,
                            child: Icon(
                              Icons.share,
                              size: 30,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          //color: Colors.red,
                          child: Icon(Icons.account_circle_outlined, size: 35),
                        ),
                        Container(
                          height: 400,
                          child: CarouselSlider.builder(
                            options: CarouselOptions(
                              height: 400,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              viewportFraction: 1.0,
                              aspectRatio: 2.1,
                              initialPage: 1,
                            ),
                            itemCount: Cat.length,
                            itemBuilder: (BuildContext context, int itemIndex,
                                    int pageViewIndex) =>
                                Container(
                              height: 100,
                              width: 300,
                              //color: Colors.yellow,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(Cat[itemIndex].two),
                                fit: BoxFit.cover,
                              )),

                              //fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 400,
                        //color: Colors.cyanAccent,
                        child: Text(
                          "Total:60,999\n"
                          "Free delivery January 21-23\n",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 400,
                        // color: Colors.blue,
                        child: Text(
                          "Select delivery location",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.teal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 400,
                        // color: Colors.blue,
                        child: Text(
                          "Only 1 left in stock",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.teal,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 40,
                        width: 350,
                        color: Colors.yellowAccent[700],
                        child: Center(
                            child: Text(
                          "Add to Cart",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 40,
                        width: 350,
                        color: Colors.yellow,
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

// class Abc {
//   String? text;
//   String? image;
//
//   Abc(this.image, this.text);
// }
//
// List listsss = moduleData.map((e) => Abc(e['text'], e['image'])).toList();
//
// var moduleData = [
//   {'text': 'Super Jumper', "image": "assets/a1.jpg"},
//   {'text': 'Super Jumper', "image": "assets/d1.jpg"},
//   // {'text': 'Space Gun', 'image': 'assets/a2.jpg'},
//   // {'text': 'Recoil', 'image': 'assets/a3.jpg'},
//   // {'text': 'Flash Tower', 'image': 'assets/a4.jpg'},
//   // {'text': 'Equinox', 'image': 'assets/xyz.jpg'},
//   // {'text': 'Wonderland baba', 'image': 'assets/a6.jpg'},
// ];
class Mobile {
  String? one;
  String? two;
  Mobile(this.one, this.two);
}

List Cat = moduleData
    .map((e) => Mobile(
          e['one'],
          e['two'],
        ))
    .toList();
var moduleData = [
  {'one': 'abccc', "two": "assets/d6.jpg"},
  {'one': 'abccc', "two": "assets/d3.jpg"},
  {'one': 'abccc', "two": "assets/d4.jpg"},
  {'one': 'abccc', "two": "assets/d5.jpg"},
  {'one': 'abccc', "two": "assets/d7.jpg"},
  {'one': 'abccc', "two": "assets/d2.jpg"},
];
