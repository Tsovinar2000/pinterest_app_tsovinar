import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(),
        body: _body(),


      ),
    );
  }
}
Widget _appBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(40),
    child: Container(
      alignment: Alignment.center,
      // decoration: BoxDecoration(
      //   color: Colors.grey[300],
      //
      // ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              // width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(45),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 10),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(45),

                ),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      border: InputBorder.none,
                      hintText: "Search for ideas",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),

  );
}

Widget _body() {
  return GridView.count(
      padding: null,
      crossAxisCount:1,
      children: List.generate(4, (index) => Container(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                _ideas_for_search()
              ],
            ),

          ],
        ),
      )
      )
  );
}

Widget _ideas_for_search() {
  return Row(
    children: <Widget>[
      Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30,top: 20),
            child: Text(
              "Ideas for you",
              style: TextStyle(
                fontSize: 20,
                fontWeight:FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              _stacks(),
              _stacks(),
            ],

          ),
          Row(
            children: <Widget>[
              _stacks(),
              _stacks(),
            ],

          )

        ],
      ),


    ],
  );



}

Widget _stacks() {
  return  Stack(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(left: 20,right: 10),
        child: Image.asset(
          "assets/0.png",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
          color: Color(0xff0d69ff).withOpacity(0.1),

        ),
      ),

      Container(
          padding: EdgeInsets.only(left: 20,right: 10,top: 50),
          alignment: Alignment.center,
          child: Text(
            'Show text here',
            style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 22.0),
          )),
    ],
  );
}