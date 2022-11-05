 import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openfacebook() async {
    var url = "https://www.facebook.com/iyanujesu.okunola.5";
    if (await canLaunch(url)) {
      await launch(url, universalLinksOnly: true);
    } else {
      print('Error');
      throw 'Error occured';
    }
  }

  void _opentwitter() async {
    var url =
        "https://twitter.com/SamuelOkunola7?t=gRouTCFnMMX6KWJZvcxn6Q&s=09";
    if (await canLaunch(url)) {
      await launch(url, universalLinksOnly: true);
    } else {
      print('Error');
      throw 'Error occured';
    }
  }

  void _openinstagram() async {
    var url =
        "https://www.instagram.com/invites/contact/?i=1gzkd2lb74dme&utm_content=qjxvee";
    if (await canLaunch(url)) {
      await launch(url, universalLinksOnly: true);
    } else {
      print('Error');
      throw 'Error occured';
    }
  }

  void _openwhatsapp() async {
    String phoneNumber = '+23407032836288';
    var url = 'https://wa.me/${phoneNumber}?text=HelloWorld';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Error');
      throw 'Error occured';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.asset('assets/images/two.jpg',
              height: 100, width: 100, fit: BoxFit.cover),
        ),
        toolbarHeight: 140,
        bottom: const PreferredSize(
            preferredSize: const Size.fromHeight(18.0),
            child: Text('Hi, I am Samuel',
                style: TextStyle(color: Colors.white, fontSize: 25))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              height: 50,
              width: 150,
              child: Text(
                'My Portfolio',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ExpansionTile(
                    title: Text(
                      'Username',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          '_SammyOkuns',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ExpansionTile(
                    title: Text(
                      'About',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'I am passionate mobile developer, I love learning and solving problems',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ExpansionTile(
                    title: Text(
                      'What I can offer',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Mobile developement with flutter\nFrontend webdevelopment with ReactJs',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ExpansionTile(
                    title: Text(
                      'Social Media Links',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 20),
                              width: 60,
                              height: 70,
                              child: IconButton(
                                icon: Image.asset(
                                  "assets/images/ig.png",
                                  fit: BoxFit.contain,
                                ),
                                onPressed: () {
                                  _openinstagram();
                                },
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 20),
                              width: 60,
                              height: 70,
                              child: IconButton(
                                icon: Image.asset(
                                  "assets/images/tw.png",
                                  fit: BoxFit.contain,
                                ),
                                onPressed: () {
                                  _opentwitter();
                                },
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 20),
                              width: 60,
                              height: 70,
                              child: IconButton(
                                icon: Image.asset(
                                  "assets/images/wh.png",
                                  fit: BoxFit.contain,
                                ),
                                onPressed: () {
                                  _openwhatsapp();
                                },
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 20),
                              width: 60,
                              height: 70,
                              child: IconButton(
                                icon: Image.asset(
                                  "assets/images/fb.png",
                                  fit: BoxFit.contain,
                                ),
                                onPressed: () {
                                  _openfacebook();
                                },
                              ))
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
