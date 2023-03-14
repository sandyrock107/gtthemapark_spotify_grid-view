import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.cyan[100],
        title: Container(
          height: 30,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(4),
          ),
          child: TextFormField(
            decoration: InputDecoration(
                label: Text(
                  "Search sandy.com",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.black87,
                ),
                suffixIcon: Icon(
                  Icons.camera,
                  size: 24,
                  color: Colors.black87,
                )),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: liststwo.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Container(
                            // margin: new EdgeInsets.symmetric(
                            //     horizontal: 20.0, vertical: 20.0),
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(liststwo[index].image),
                              fit: BoxFit.fill,
                            )),
                          ),
                          Text(
                            liststwo[index].text,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                aspectRatio: 2.1,
                initialPage: 1,
              ),
              itemCount: lists.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                height: 200,
                width: double.infinity,
                //color: Colors.yellow,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(lists[itemIndex].image),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 30,
                  width: 400,
                  color: Colors.cyan[100],
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "High Lavel Thrill Rides",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: lists.length,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                      margin: new EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 6.0),
                                      height: 150,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(lists[index].image),
                                        fit: BoxFit.cover,
                                      ))),
                                  Text(
                                    lists[index].text,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 400,
                  color: Colors.cyan[100],
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Low Lavel Thrill Rides",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 200,
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          //maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemCount: liststhree.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                                height: 100,
                                width: 1500,
                                // color: Colors.lightBlue,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(liststhree[index].image3),
                                  fit: BoxFit.cover,
                                ))),
                            Text(
                              liststhree[index].text3,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Model {
  String? text;
  String? image;

  Model(this.text, this.image);
}

List lists = moduleData.map((e) => Model(e['text'], e['image'])).toList();

var moduleData = [
  {'text': 'Super Jumper', 'image': 'assets/a4.jpg'},
  {'text': 'Space Gun', 'image': 'assets/a2.jpg'},
  {'text': 'Recoil', 'image': 'assets/a3.jpg'},
  {'text': 'Flash Tower', 'image': 'assets/a4.jpg'},
  {'text': 'Equinox', 'image': 'assets/xyz.jpg'},
  {'text': 'Wonderlaw bamba', 'image': 'assets/a6.jpg'},
];

class Model1 {
  String? text1;
  String? image1;
  Model1(this.text1, this.image1);
}

List lists1 = moduleData.map((e) => Model(e['text1'], e['image1'])).toList();
var moduleData1 = [
  {'text': 'Juice', 'image': 'assets/a6.jpg'},
  {'text': 'Mobile', 'image': 'assets/a2.jpg'},
  {'text': 'Laptop', 'image': 'assets/a3.jpg'},
  {'text': 'Car', 'image': 'assets/a4.jpg'},
  {'text': 'Juice', 'image': 'assets/xyz.jpg'},
  {'text': 'mobile', 'image': 'assets/a5.jpg'},
];

class modeltwo {
  String? text;
  String? image;
  modeltwo(this.text, this.image);
}

List liststwo =
    moduleDatatwo.map((e) => modeltwo(e['text'], e['image'])).toList();
var moduleDatatwo = [
  {'text': 'Juice', 'image': 'assets/c1.jpg'},
  {'text': 'Mobile', 'image': 'assets/c2.jpg'},
  {'text': 'Laptop', 'image': 'assets/c3.jpg'},
  {'text': 'Car', 'image': 'assets/c5.jpg'},
  {'text': 'Juice', 'image': 'assets/c1.jpg'},
  {'text': 'Mobile', 'image': 'assets/c2.jpg'},
];

class modelthree {
  String? text3;
  String? image3;
  modelthree(this.text3, this.image3);
}

List liststhree =
    moduleDatathree.map((e) => modelthree(e['text3'], e['image3'])).toList();
var moduleDatathree = [
  {'text3': 'Fusion slide', 'image3': 'assets/d4.jpg'},
  {'text3': 'Family slide', 'image3': 'assets/d5.jpg'},
  {'text3': 'Boomerang', 'image3': 'assets/d6.jpg'},
  {'text3': 'Bullet', 'image3': 'assets/d3.jpg'},
  {'text3': 'Fun Glides', 'image3': 'assets/d6.jpg'},
  {'text3': 'Wave Pool', 'image3': 'assets/d4.jpg'},
];
