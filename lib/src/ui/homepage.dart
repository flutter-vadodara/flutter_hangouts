import 'package:flutter/material.dart';
import 'package:flutter_hangouts/src/helper/responsiveWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isExpanded = false;

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
                    child: Image.asset(
                      "assets/images/mobile_development.png",
                      width: 500,
                      height: 500,
                    )),
                Container(
                  margin: EdgeInsets.only(left: 40, top: 120),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("FLUTTER HANGOUTS",
                          style: TextStyle(
                              fontSize: 68, fontWeight: FontWeight.w800)),
                      SizedBox(
                        height: 36,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Flutter Hangouts is an initiative by Flutter Vadodara to organize study-jams & workshops across universities.",
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(6.0),
                                ),
                                height: 60,
                                elevation: 0,
                                focusElevation: 0,
                                minWidth: MediaQuery.of(context).size.width,
                                color: Color(0xff536DFE),
                                onPressed: () {
                                  print("Button Pressed");
                                },
                                child: ButtonTheme(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6.5,
                color: Color(0xff536DFE),
                child: Text(
                  "ABOUT FLUTTER HANGOUTS",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 72, vertical: 24),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ClipOval(
                          child: Container(
                            color: Color(0xffF76F74),
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            child: Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 1.7,
                            child: Text(
                              "Flutter is growing while many are looking to explore and learn this beautiful technology. So, Flutter Vadodara has planned to organize workshops and Mini Boot-Camps at different colleges/universities to help students learn and explore the Flutter-Verse",
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.justify,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 160,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            width: MediaQuery.of(context).size.width / 1.7,
                            child: Text(
                              "We will be providing all the support and help to all the campus community clubs in arranging these study-jams. While, for the colleges that don't have any campus community clubs, we will be helping them thoroughly in organizing workshops, arranging speakers and providing all the necessary resources",
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.justify,
                            )),
                        ClipOval(
                          child: Container(
                            color: Color(0xffF76F74),
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 160,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ClipOval(
                          child: Container(
                            color: Color(0xffF76F74),
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            child: Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 1.7,
                            child: Text(
                              "Encourage new faces to get up on the stage, to speak out and to share their knowledge with other folks as that's how community works; an equal growth of everyone!",
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.justify,
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
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
                  color: Color(0xff536DFE),
                  child: Text("FAQ SECTION",
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w700,
                      )),
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
                          trailing: Icon(Icons.keyboard_arrow_down),
                          title: Text(
                            "What is Lorem Ipsum?",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey)),
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
                  child: Text(
                    "Made with Flutter by Flutter Vadodara",
                    style: TextStyle(fontSize: 16,color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GetBackgroundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.white;
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = Color(0xffB2EBF2);
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
