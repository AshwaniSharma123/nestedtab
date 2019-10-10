import 'package:flutter/material.dart';


class nested extends StatefulWidget {
  @override
  _nestedState createState() => _nestedState();
}

class _nestedState extends State<nested> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // initialIndex: 1,
      length: 3,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: TabBar(
                tabs: <Widget>[
                  Text('Image',style: TextStyle
                    (color: Colors.black),),
                  Icon(Icons.offline_pin),
                  Text('Text', style: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow
                   ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Center(
                  //child: Image.network(''),
                ),
                Center(
                  child: Icon(Icons.youtube_searched_for),
                ),
                Container(
                  child: Center(
                    child: TextFormField(
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
