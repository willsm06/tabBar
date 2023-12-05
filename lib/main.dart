import 'package:flutter/material.dart';

void main() {
  runApp(const Tabbar());
}

class Tabbar extends StatefulWidget {
  const Tabbar({ Key? key }) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Appbar com guias"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.android)),
                Tab(icon: Icon(Icons.cloud_download))
              ],
            )
            ),
            body:TabBarView(
              children: [
                Column(
                  children: [
                    Text("tela do android"),
                    Icon(Icons.phone_android)
                  ],
                ),
                Column(
                  children: [
                    Text("tela do download"),
                    Icon(Icons.downloading)
                  ],
                ),
    

              ]
            ) 
          )
        )
    );
  }
}