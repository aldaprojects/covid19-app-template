import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  _footerBox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Are you feeling sick?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          )
        ),
        SizedBox(height: 10.0),
        Text(
          'If you fell sick with any of covid-19 symptoms please call or SMS us inmediately for help',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 15.0
          ),
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 50.0,
              width: 150.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/icons/phone.png'),
                  Text(
                    'Call Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0)
              ),
            ),
            Container(
              height: 50.0,
              width: 150.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/icons/chat.png'),
                  Text(
                    'Send SMS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xFF4D79FF),
                borderRadius: BorderRadius.circular(20.0)
              ),
            )
          ],
        )
      ],
    );
  }

  _headerBox() {
    return Container(
      height: 320,
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Color(0xFF473F97),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45.0), bottomRight: Radius.circular(45.0))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset('assets/icons/menu.png'),
              Image.asset('assets/icons/bell.png')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Covid-19',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
                )
              ),
              Container(
                height: 35.0,
                width: 110.0,
                padding: EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset('assets/imgs/usa.png'),
                    Text('USA', style: TextStyle(fontWeight: FontWeight.bold)),
                    Image.asset('assets/icons/arrow_down.png')
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
                ),
              )
            ],
          ),
          _footerBox()
        ],
      ),
    );
  }

  _imagePrevention( Image image, String title ) {
    return Column(
      children: <Widget>[
        image,
        SizedBox(height: 10.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _headerBox(),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Prevention',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _imagePrevention(Image.asset('assets/imgs/distance.png'), 'Avoid close \ncontact'),
                  _imagePrevention(Image.asset('assets/imgs/clean.png'), 'Clean your \nhands often'),
                  _imagePrevention(Image.asset('assets/imgs/facemask.png'), 'Wear a \nfacemask'),
                ],
              ),
              SizedBox(height: 30.0),
              Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 370.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Color(0xFF56549E), Color(0xFFAEA1E5)],
                        stops: [0.0, 1.0]
                      ),
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 140.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Do your own test!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Text(
                            'Follow the instructions to do your own test.',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15.0,
                            )
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Image.asset('assets/imgs/woman.png'),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}