import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_app/pages/chats_page.dart';
import 'package:health_app/pages/discovery_page.dart';
import 'package:health_app/pages/guide_dart.dart';
import 'package:health_app/pages/library_page.dart';
import 'package:health_app/pages/profile_page.dart';


class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

PageController pageController;

class _HomePageState extends State<HomePage> {

  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new PageView(
        children: [
          new Container(color: Colors.white, child: new DiscoveryPage()),
          new Container(color: Colors.white, child: new ChatsPage()),
          new Container(color: Colors.white, child: new LibraryPage()),
          new Container(color: Colors.white, child: new GuidePage()),
          new Container(color: Colors.white, child: new ProfilePage()),
        ],
        controller: pageController,
        physics: new NeverScrollableScrollPhysics(),
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: new Container(
        height: 76.0,
        child: new Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.redAccent,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.blue))),
          child: new BottomNavigationBar(items: [
            BottomNavigationBarItem(
              icon: Icon(HealthApp.discovery,
                  size: 20.0, color: (_page == 0) ? Colors.blue : Colors.grey),
              title: Text('Discovery', style: TextStyle(color: Colors.blue, fontSize: 10.0, fontFamily: 'Gilroy-Regular')),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(HealthApp.chats,
                  size: 20.0, color: (_page == 1) ? Colors.blue : Colors.grey),
              title: Text('Chats', style: TextStyle(color: Colors.blue, fontSize: 10.0, fontFamily: 'Gilroy-Regular')),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(HealthApp.list,
                  size: 20.0, color: (_page == 2) ? Colors.blue : Colors.grey),
              title: Text('Library', style: TextStyle(color: Colors.blue, fontSize: 10.0, fontFamily: 'Gilroy-Regular')),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(HealthApp.find,
                  size: 20.0, color: (_page == 3) ? Colors.blue : Colors.grey),
              title: Text('Guide', style: TextStyle(color: Colors.blue, fontSize: 10.0, fontFamily: 'Gilroy-Regular')),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(HealthApp.profile,
                  size: 20.0, color: (_page == 4) ? Colors.blue : Colors.grey),
              title: Text('Profile', style: TextStyle(color: Colors.blue, fontSize: 10.0, fontFamily: 'Gilroy-Regular')),
              backgroundColor: Colors.white,
            ),
          ],
            fixedColor: Colors.white,
            type: BottomNavigationBarType.shifting,
            onTap: navigationTapped,
            currentIndex: _page,
          ),
        ),
      ),
    );
  }


  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

}

class HealthApp {
  HealthApp._();

  static const _kFontFam = 'HealthApp';

  static const IconData list = const IconData(0xe800, fontFamily: _kFontFam);
  static const IconData back = const IconData(0xe801, fontFamily: _kFontFam);
  static const IconData chats = const IconData(0xe802, fontFamily: _kFontFam);
  static const IconData profile = const IconData(0xe803, fontFamily: _kFontFam);
  static const IconData discovery = const IconData(0xe804, fontFamily: _kFontFam);
  static const IconData filter = const IconData(0xe805, fontFamily: _kFontFam);
  static const IconData find = const IconData(0xe806, fontFamily: _kFontFam);
  static const IconData health = const IconData(0xe807, fontFamily: _kFontFam);
  static const IconData invite = const IconData(0xe808, fontFamily: _kFontFam);
}

