import 'package:flutter/material.dart';
import 'package:gtthemepark/wonderlaw.dart';

class design extends StatefulWidget {
  const design({Key? key}) : super(key: key);

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Center(
          child: Text(
            "Wonderlaw",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.menu,
            color: Colors.black87,
            size: 28,
          ),
        ),
        actions: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.camera,
              color: Colors.black87,
              size: 25,
            ),
          )),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade500,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(22.5),
                    )),
                height: 300,
                width: 350,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "WONDERLAW",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 45,
                      width: 300,
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                              "User Name",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.person_pin,
                              size: 25,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 45,
                      width: 300,
                      decoration: BoxDecoration(
                          // color: Colors.white,
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text(
                                "Password",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 25,
                                color: Colors.black87,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye,
                                size: 25,
                                color: Colors.black87,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => app()));
                      },
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),

                //color: Colors.cyan,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("assets/xyz.jpg"),
                    fit: BoxFit.cover,
                  ),

                  // border: Border.all(width: 2, color: Colors.cyan),
                  // borderRadius: BorderRadius.all(Radius.circular(20.5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
