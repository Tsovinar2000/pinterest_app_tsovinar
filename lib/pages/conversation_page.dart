import 'package:flutter/material.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  // int currentIndex = 3;
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
    preferredSize: Size.fromHeight(280),
    child: Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              FlatButton(

                onPressed: () {
                  /*...*/
                },
                child: Text(
                  "Updates",
                ),
              ),
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
                      "Messages",
                    ),
                  ),
                ),
              ),
            ],
          ),


          Container(
            padding: EdgeInsets.only(top:70),
            child: Text(
              "Share ideas with",
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
              ),
            ),


          ),

          Container(
            padding: EdgeInsets.only(bottom:40),
            child: Text(
              "your friends",
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
              ),
            ),


          ),

          Container(
            width: 350,
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
                  hintText: "Search by name or email",
                  prefixIcon: Icon(Icons.search),
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
      children: List.generate(3, (index) => Container(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                _conversation_friends(),
                _conversation_friends(),
                _conversation_friends(),
                _conversation_friends(),
                _conversation_friends(),
                _conversation_friends(),
              ],
            ),

          ],
        ),
      )
      )
  );
}


Widget _conversation_friends() {
  return Row(
    children: <Widget>[
      Image.asset(
        "assets/0.png",
        height: 60,
        width: 60,
      ),
      Text(
        "Sumo Sushi",
        style: TextStyle(
          fontSize: 20,
          fontWeight:FontWeight.bold,
        ),

      ),
      Container(
        padding: EdgeInsets.only(left: 85),
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
            color: Colors.red,
            textColor: Colors.white,
            onPressed: () {
              /*...*/
            },
            child: Text(
              "Message",
            ),
          ),
        ),
      ),

    ],
  );
}

