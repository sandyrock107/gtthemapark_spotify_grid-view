import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class eee extends StatelessWidget {
  const eee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade400,
        title: Container(
          height: 35,
          width: 400,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                  label: Text(
                    "Search xyz.com",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                  ),
                  suffixIcon: Icon(
                    Icons.camera,
                    size: 20,
                  )),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                width: 500,
                color: Colors.black12,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 90,
                              child: Image.asset("assets/aaaa.jpg"),
                            ),
                            Text("Prime"),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 2.0,
                aspectRatio: 1.9,
                initialPage: 2,
              ),
              itemCount: 4,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                          width: double.infinity,
                          color: Colors.yellow,
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("assets/xyz.jpg"),
                                fit: BoxFit.fill,
                              )),
                            ),
                          )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 180,
                // width: 500,
                color: Colors.black12,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 100,
                              // color: Colors.brown,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/images.png"),
                                      fit: BoxFit.fill)),
                            ),
                            Text("Prime"),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Container(
              height: 250,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,

                      // maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 100,
                      width: 100,

                      //color: Colors.lightBlue,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("Assets/xyz.jpg"),
                        fit: BoxFit.fill,
                      )),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
