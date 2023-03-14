import 'package:flutter/material.dart';

class Audio_player extends StatelessWidget {
  const Audio_player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'chats'),
                Tab(text: 'status'),
                Tab(text: 'calls'),
              ],
            ),
            // backgroundColor: Colors.yellowAccent[100],
            leading: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 300,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.cyanAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
