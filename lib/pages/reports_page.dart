import 'package:flutter/material.dart';

class ReporstPage extends StatelessWidget {

  _box({
    BuildContext context,
    Color color,
    String title,
    String amount,
    double fontSize,
    double mediaQuery
  }) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 100.0,
      width: MediaQuery.of(context).size.width * mediaQuery,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Text(amount, style: TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset('assets/icons/menu.png'),
                  Image.asset('assets/icons/bell.png')
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Statistics',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white10
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        height: 35.0,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Center(
                          child: Text(
                            'My Country',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        height: 35.0,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Center(
                          child: Text(
                            'Global',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Total',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    'Today',
                    style: TextStyle(
                      color: Colors.white70
                    ),
                  ),
                  Text(
                    'Yesterday',
                    style: TextStyle(
                      color: Colors.white70
                    ),
                  )
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _box(
                    context: context,
                    color: Color(0xFFFFB259),
                    title: 'Affected',
                    amount: '336,851',
                    mediaQuery: 0.41,
                    fontSize: 25.0
                  ),
                  _box(
                    context: context,
                    color: Color(0xFFFF5959),
                    title: 'Death',
                    amount: '9,620',
                    mediaQuery: 0.41,
                    fontSize: 25.0
                  )
                ],
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _box(
                    context: context,
                    color: Color(0xFF4CD97B),
                    title: 'Recovered',
                    amount: '17,977',
                    mediaQuery: 0.27,
                    fontSize: 18.0
                  ),
                  _box(
                    context: context,
                    color: Color(0xFF4DB5FF),
                    title: 'Active',
                    amount: '301,251',
                    mediaQuery: 0.27,
                    fontSize: 18.0
                  ),
                  _box(
                    context: context,
                    color: Color(0xFF9059FF),
                    title: 'Serious',
                    amount: '8,702',
                    mediaQuery: 0.27,
                    fontSize: 18.0
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
            color: Colors.white
          ),
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Daily New Cases', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 30.0),
                Center(
                  child: Image.asset('assets/imgs/chart.png'),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}