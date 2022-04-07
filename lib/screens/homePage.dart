import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wegii/addons/btmNavBar.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2 ,
        child: Scaffold(
          appBar: AppBar(leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.segment, color: CupertinoColors.white,),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              )
            ),

            title: Text("Browse all products"),

            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {}
              ),

              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_active_sharp))
            ],

            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Tab(text: "Marketplace"),
                Tab(text: "Product Matches",)
              ],
            ),
            backgroundColor: Colors.orange,
            elevation: 0,
            titleSpacing: 4,
          ),

          body: BtmNavBar(),

        ),
      ),
    );
  }






}
