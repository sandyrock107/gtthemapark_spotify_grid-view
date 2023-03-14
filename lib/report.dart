import 'package:flutter/material.dart';

class task extends StatefulWidget {
  const task({Key? key}) : super(key: key);

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images.png"),
            )),
            height: 150,
            width: 150,
            //color: Colors.cyanAccent,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/xyz.jpg"),
                              fit: BoxFit.fill,
                            ),
                            //border: Border.all(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(23.4),
                            )),
                        height: 180,
                        width: 180,
                        //color: Colors.cyan,
                        child: Column(
                          children: [
                            SizedBox(height: 120),
                            Container(
                                child: Text(
                              "FUN TIME",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/a2.jpg"),
                              fit: BoxFit.fill,
                            ),

                            //border: Border.all(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(23.4),
                            )),
                        height: 180,
                        width: 180,
                        //color: Colors.cyan,
                        child: Column(
                          children: [
                            SizedBox(height: 120),
                            Container(
                                child: Text(
                              "Designation",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/a3.jpg"),
                              fit: BoxFit.fill,
                            ),
                            //border: Border.all(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(23.4),
                            )),
                        height: 180,
                        width: 180,
                        //color: Colors.cyan,
                        child: Column(
                          children: [
                            SizedBox(height: 120),
                            Container(
                                child: Text(
                              "Due Tasks",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/d2.jpg"),
                              fit: BoxFit.fill,
                            ),
                            //border: Border.all(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(23.4),
                            )),
                        height: 180,
                        width: 180,
                        //color: Colors.cyan,
                        child: Column(
                          children: [
                            SizedBox(height: 120),
                            Container(
                                child: Text(
                              "Play time",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/a6.jpg"),
                              fit: BoxFit.fill,
                            ),
                            // border: Border.all(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(23.4),
                            )),
                        height: 180,
                        width: 180,
                        //color: Colors.cyan,
                        child: Column(
                          children: [
                            SizedBox(height: 120),
                            Container(
                                child: Text(
                              "Employee",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/aaaa.jpg"),
                          fit: BoxFit.fill,
                        ),
                        // border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(23.4),
                        )),
                    height: 180,
                    width: 377,
                    //color: Colors.cyan,
                    child: Column(
                      children: [
                        SizedBox(height: 120),
                        Container(
                            child: Text(
                          "WELCOM",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
