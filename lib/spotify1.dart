import 'package:flutter/material.dart';

import 'listview.dart';

class sp1 extends StatelessWidget {
  const sp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            // Setting floatHeaderSlivers to true is required in order to float
            // the outer slivers over the inner scrollable.
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  //title: const Text('Floating Nested SliverAppBar'),
                  floating: true,
                  expandedHeight: 500.0,
                  forceElevated: innerBoxIsScrolled,
                  flexibleSpace: Container(
                    color: Colors.black,
                    child: FlexibleSpaceBar(
                      background: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 30, horizontal: 5),
                                height: 40,
                                width: 280,

                                //color: Colors.black,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.grey)),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        "Find in playlist",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 30, horizontal: 5),
                                height: 40,
                                width: 93,
                                //color: Colors.black,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.grey)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Sort",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 230,
                                width: 250,
                                //color: Colors.cyanAccent,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(
                                    "Assets/e1.webp",
                                  ),
                                  fit: BoxFit.fill,
                                )),
                              ),
                              SizedBox(
                                height: 20,
                                width: 10,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 400,
                                          //color: Colors.cyanAccent,
                                          child: Text(
                                            "A.R.Rahuman,Yuvan Shankar Raja,G.V.Prakash",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 400,
                                          //color: Colors.cyanAccent,
                                          child: Text(
                                            "Made for santhoshkumar",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        SizedBox(
                                          height: 40,
                                          width: 400,
                                          //color: Colors.cyanAccent,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.favorite_border_outlined,
                                                size: 35,
                                                color: Colors.white,
                                              ),
                                              Icon(
                                                Icons.more_vert,
                                                size: 30,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 270,
                                              ),
                                              Icon(
                                                Icons.play_circle,
                                                size: 50,
                                                color:
                                                    Colors.greenAccent.shade400,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 10,
                                width: 100,
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 10,
                                  itemBuilder: (BuildContext, index) {
                                    return Container(
                                      height: 50,
                                      width: 100,
                                      color: Colors.cyanAccent,
                                    );
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 100,
                          //color: Colors.red,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(lists[index].image),
                            fit: BoxFit.cover,
                          )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40,
                          width: 220,
                          //color: Colors.red,
                          child: Text(
                            lists[index].text,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          //color: Colors.red,
                          child: Icon(
                            Icons.more_vert,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                })));
  }
}

class sandy {
  String? text;
  String? image;
  sandy(this.text, this.image);
}

List lists = moduleData.map((e) => sandy(e['text'], e['image'])).toList();

var moduleData = [
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s6.jpg'
  },
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s1.jpg'
  },
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s2.jpg'
  },
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s3.jpg'
  },
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s4.jpg'
  },
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s7.jpg'
  },
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s6.jpg'
  },
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s1.jpg'
  },
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s2.jpg'
  },
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s3.jpg'
  },
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s4.jpg'
  },
  {
    'text': ' "Take you back to the best moments of your life.",',
    'image': 'assets/s7.jpg'
  },
];
