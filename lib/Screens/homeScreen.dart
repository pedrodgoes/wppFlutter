import 'call.dart';
import 'status.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Roxinho'),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
          ],
          bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.all(12),
            tabs: [
              Icon(Icons.camera_alt),
              Container(
                  width: 90,
                  alignment: Alignment.center,
                  child: Text('Conversas')),
              Container(
                  width: 90,
                  alignment: Alignment.center,
                  child: Text('Status')),
              Container(
                  width: 90,
                  alignment: Alignment.center,
                  child: Text('Chamadas'))
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Text('Camera'),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ChatScreen(
                        image: 'assets/images/user.png',
                        title: 'Joaozinho do backend',
                      ),
                    ],
                  );
                }),
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    StatusScreen(
                      image: "assets/images/user.png",
                    )
                  ],
                );
              },
            ),
            ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CallScreen(
                      image: "assets/images/user.png",
                      title: "Jorginho Analista Brabo",
                    )
                  ],
                );
              },
            )
          ],
        ),
        floatingActionButton: _tabController.index == 1
            ? FloatingActionButton(
                onPressed: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                child: Icon(Icons.message),
              )
            : FloatingActionButton(
                onPressed: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                child: Icon(Icons.camera_alt),
              ));
  }
}
