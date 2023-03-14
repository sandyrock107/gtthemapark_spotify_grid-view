import 'package:flutter/material.dart';

class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          //2
          SliverAppBar(
            expandedHeight: 500.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                        height: 40,
                        width: 280,
                        //color: Colors.black,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.grey)),
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
                        margin:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                        height: 40,
                        width: 93,
                        //color: Colors.black,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.grey)),
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
                                        color: Colors.greenAccent.shade400,
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

              // background: Image.asset(
              // 'assets/e1.webp',
              //fit: BoxFit.fill,
            ),
          ),
          // ),
          //3
        ],
      ),
    );
  }
}
