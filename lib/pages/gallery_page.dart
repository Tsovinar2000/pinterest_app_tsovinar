import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// import 'package:transparent_image/transparent_image.dart';
// import 'package:flutter_staggered_grid_view/staggered_grid_view.dart';
class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(),
        body: _body(),

      ),
    );
  }

  Widget _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(40),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(

        ),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10 , right: 20 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(45),
                ),

              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(45),

                ),
                child: FlatButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "All",
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                /*...*/
              },
              child: Text(
                "Following",
              ),
            )
          ],
        ),
      ),


    );
  }

  Widget _body() {
    return GridView.count(
        crossAxisCount:2,
        children: List.generate(10, (index) => Container(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/0.png",

              ),
            ],
          ),
        )
        )
    );

  }
}

