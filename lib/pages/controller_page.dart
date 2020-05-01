import 'package:covidapp/pages/reports_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class ControllerPage extends StatefulWidget {
  @override
  _ControllerPageState createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {

  int _selected = 0;
  String homeIcon;
  String chartIcon;

  _bottomAppBar() {
    return BottomAppBar(
      elevation: 0.0,
      color: Colors.white,
      child: Container(
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: 60.0,
              height: 35.0,
              child: IconButton(
                icon: Image.asset('assets/icons/$homeIcon.png'),
                onPressed: () {
                  setState(() {
                    _selected = 0;
                    print(_selected);
                  });
                },
              ),
              decoration: BoxDecoration(
                color: _selected == 0 ? Color(0xFF4C79FF) : Colors.transparent,
                borderRadius: BorderRadius.circular(20.0)
              ),
            ),
            Container(
              width: 60.0,
              height: 35.0,
              child: IconButton(
                icon: Image.asset('assets/icons/$chartIcon.png'),
                onPressed: () {
                  setState(() {
                    _selected = 1;
                    print(_selected);
                  });
                },
              ),
              decoration: BoxDecoration(
                color: _selected == 1 ? Color(0xFF4C79FF) : Colors.transparent,
                borderRadius: BorderRadius.circular(20.0)
              ),
            ),
            Image.asset('assets/icons/report.png'),
            Image.asset('assets/icons/info.png'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    if ( _selected == 0 ) {
      homeIcon = 'home_active';
      chartIcon = 'chart';
    } else {
      homeIcon = 'home';
      chartIcon = 'chart_active';
    }

    return Scaffold(
      backgroundColor: _selected == 0 ? Colors.white : Color(0xFF473F97),
      body: SafeArea(
        child: SingleChildScrollView(
          child: _selected == 0 ? HomePage() : ReporstPage(),
        ),
      ),
      bottomNavigationBar: _bottomAppBar()
    );
  }
}