import 'package:flutter/material.dart';
import 'package:flutter_hangouts/src/helper/responsiveWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: getLargeScreen(),
      smallScreen: getSmallScreen(),
    );
  }

  getLargeScreen() {
    return Scaffold(
      body: getBody(),
    );
  }

  //TODO: Implement body for small screen
  getSmallScreen() {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: getBody(),
    );
  }

  getBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Container(
                    alignment: Alignment.bottomRight,
                    child: Image.asset("assets/images/bottom_image.jpg")),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  alignment: Alignment.centerRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/flutter_logo.png",
                            height: 100,
                            width: 100,
                          ),
                          Text("FLUTTER HANGOUTS",
                              style: TextStyle(
                                  fontSize: 72, fontWeight: FontWeight.w800))
                        ],
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Presented By"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Flutter Vadodara",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w800))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 6.5,
                  color: Colors.blueAccent,
                  child: Text(
                    "ABOUT FLUTTER HANGOUTS",
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 24),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 6.5,
                  color: Colors.blueAccent,
                  child: Text(
                    "FAQ Section",
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: ListView.separated(
                      itemCount: 4,
                      itemBuilder: (context, int) {
                        return ExpansionTile(
                          title: Text(
                            "What is Lorem Ipsum?",
                            style: TextStyle(fontSize: 24),
                          ),
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                  style: TextStyle(fontSize: 24)),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 16,
                        );
                      },
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(24),
                  alignment: Alignment.bottomCenter,
                  child: Text("Build with Flutter by Flutter Vadodara",style: TextStyle(fontSize: 16),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
