import 'package:flutter/material.dart';
import 'package:pinterest_app_tsovinar/pages/gallery_page.dart';
import 'package:pinterest_app_tsovinar/pages/search_page.dart';
import 'package:pinterest_app_tsovinar/pages/conversation_page.dart';
import 'package:pinterest_app_tsovinar/pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bottomBar(),
    );
  }

  Widget _body() {
    switch(currentIndex) {
      case 0:
        return GalleryPage() ;
      case 1:
        return SearchPage();
      case 2:
        return ConversationPage();
      case 3:
        return ProfilePage();
      default:
        return GalleryPage();
    }
  }

  Widget _bottomBar() {
    return Container(
      padding: EdgeInsets.only(left: 45 , right: 45 , bottom: 20),
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
        child: BottomNavigationBar(
            iconSize: 30.0,
            selectedFontSize: 13.0,
            currentIndex: currentIndex,
            elevation: 10,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                activeIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  color: Colors.grey,
                ),
                title: Text(""),
                activeIcon: Icon(
                  Icons.message,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.crop_original ,
                  color: Colors.grey,
                ),
                title: Text(""),
                activeIcon: Icon(
                  Icons.crop_original ,
                  color: Colors.black,
                ),
              ),

            ]
        ),
      ),
    );
  }
}
