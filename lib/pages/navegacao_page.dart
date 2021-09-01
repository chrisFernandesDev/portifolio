import 'package:chewie/chewie.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portifolio/pages/video.page.dart';
import 'package:portifolio/pages/fotos_page.dart';
import 'package:portifolio/pages/home_page.dart';
import 'package:portifolio/pages/video_list_pages.dart';
import 'package:video_player/video_player.dart';

import 'agradecimento.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Fotos(),
    Videos(),
    AgradecimentoPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        centerTitle: true,
        // leading: Icon(Icons.all_inclusive_sharp),
        title: Text(
            "Portifólio",
          style: GoogleFonts.aBeeZee(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 70.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    // const Color.fromRGBO(36,0,14,0.9780287114845938),
                    // const Color.fromRGBO(234,175,203,1),
                    const Color.fromRGBO(36,0,14,1),
                    const Color.fromRGBO(234,175,203,1),
                    const Color.fromRGBO(231,193,231,0.9164040616246498),
                    // const Color.fromRGBO(252,69,183,0.3113620448179272),
                  ])),
        ),
      ),

        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      
      bottomNavigationBar: CurvedNavigationBar(
          color: Color.fromRGBO(238,174,202,1),
          backgroundColor: Color.fromRGBO(108,11,108,0.958420868347339),
          buttonBackgroundColor: Colors.white,

          height: 60,
          items: <Widget>[
            Icon(Icons.home, size: 20, color: Colors.black),
            Icon(Icons.photo_camera_front_outlined, size: 20, color: Colors.black),
            Icon(Icons.photo_camera_front, size: 20, color: Colors.black),
            Icon(Icons.article_outlined, size: 20, color: Colors.black),
          ],
        animationDuration: Duration(
          milliseconds: 200,
        ),
        index: 0,
        animationCurve: Curves.bounceInOut,
        onTap: _onItemTapped,
      ),
    );
  }
}
