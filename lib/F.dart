import 'package:flutter/material.dart';

class ZX extends StatelessWidget {
  const ZX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(
          Icons.menu,
          size: 30,
        ),
        title: Center(child: Text('GT SOFTWARES')),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.report,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(width: 30))),
          ),
          SizedBox(),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(width: 30)),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('LOGIN'))
        ],
      ),
    );
  }
}
