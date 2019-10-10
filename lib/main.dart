import 'package:flutter/material.dart';
import 'package:flutter_app/nested.dart';
void main() => runApp(TabsPage());
class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // initialIndex: 1,
      length: 3,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Tab Example'),
              bottom: TabBar(
                isScrollable: false,
                //indicatorSize: TabBarIndicatorSize.tab,
                tabs: <Widget>[
                  Text('Image', ),
                  Icon(Icons.offline_pin),
                  Text('Text', style: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow
                  ),),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
               nested(),
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