import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 270, 0),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.arrow_back_rounded),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Twitter'),
                          Icon(Icons.verified),
                        ],
                      ),
                      Text(
                        '14K Tweets',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: Column(children: <Widget>[
            myLayoutWidget1(),
            myLayoutWidget2(),
            myLayoutWidget3(),
            myLayoutWidget4(),
          ])),
    );
  }
}

Widget myLayoutWidget1() {
  return Column(children: <Widget>[
    Image.network(
        'https://pbs.twimg.com/profile_banners/783214/1611950530/1500x500'),
    Container(
      margin: EdgeInsets.fromLTRB(25, 0, 50, 0),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1354479643882004483/Btnfm47p_400x400.jpg')),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.more_horiz, color: Colors.blue),
              Text('Follow',
                  style: TextStyle(color: Colors.blue, fontSize: 15)),
            ],
          )),
        ],
      ),
    ),
    Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 330, 0),
                child: Column(children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Twitter',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Icon(Icons.verified, color: Colors.white),
                    ],
                  ),
                  Text(
                    '@Twitter',
                    style: TextStyle(color: Colors.grey),
                  ),
                ])),
            Text('Whats happenning?!', style: TextStyle(color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.location_on_outlined, color: Colors.grey),
                Text('everywhere', style: TextStyle(color: Colors.grey)),
                Icon(Icons.link_outlined, color: Colors.grey),
                Text('about.twitter.com', style: TextStyle(color: Colors.grey)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.book, color: Colors.grey),
                Text('Born March 21', style: TextStyle(color: Colors.grey)),
                Icon(Icons.calendar_today_rounded, color: Colors.grey),
                Text('Joined February 2007',
                    style: TextStyle(color: Colors.grey)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('0 Following', style: TextStyle(color: Colors.white)),
                Text('59.1M Followers', style: TextStyle(color: Colors.white))
              ],
            ),
          ],
        )),
  ]);
}

Widget myLayoutWidget2() {
  return Container(
    margin: EdgeInsets.all(20.0),
    padding: EdgeInsets.all(10.0),
    alignment: Alignment.topCenter,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Tweets',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
        Text('Tweets & replies',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        Text('Media',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        Text('Likes',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

Widget myLayoutWidget3() {
  return Container(
    margin: EdgeInsets.fromLTRB(20, 0, 160, 20),
    child: Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1354479643882004483/Btnfm47p_400x400.jpg')),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Twitter',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Icon(Icons.verified),
                  Text(' @Twitter', style: TextStyle(color: Colors.grey)),
                  Text(' Feb 9', style: TextStyle(color: Colors.grey))
                ],
              ),
              Text(
                'memes have expiration dates',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.messenger_outline, color: Colors.grey),
                    Text('13.6K', style: TextStyle(color: Colors.grey)),
                    Icon(Icons.keyboard_return_rounded, color: Colors.grey),
                    Text('33K', style: TextStyle(color: Colors.grey)),
                    Icon(Icons.favorite_border_outlined, color: Colors.grey),
                    Text('269.8K', style: TextStyle(color: Colors.grey)),
                  ])
            ],
          ),
        ],
      ),
    ]),
  );
}

Widget myLayoutWidget4() {
  return Row(
    children: [
      Expanded(child: Icon(Icons.home_outlined, color: Colors.grey)),
      Expanded(child: Icon(Icons.search, color: Colors.grey)),
      Expanded(child: Icon(Icons.notifications_none, color: Colors.grey)),
      Expanded(child: Icon(Icons.email_outlined, color: Colors.grey)),
    ],
  );
}
