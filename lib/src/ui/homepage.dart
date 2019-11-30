import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hangouts/src/helper/responsiveWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _smallScreen = false;
  String aboutFirstText =
      "Flutter is growing while many are looking to explore and learn this beautiful technology. So, Flutter Vadodara has planned to organize workshops and Mini Boot-Camps at different colleges/universities to help students learn and explore the Flutter-Verse";
  String aboutSecondText =
      "We will be providing all the support and help to all the campus community clubs in arranging these study-jams. While, for the colleges that don't have any campus community clubs, we will be helping them thoroughly in organizing workshops, arranging speakers and providing all the necessary resources";
  String aboutThirdText =
      "Encourage new faces to get up on the stage, to speak out and to share their knowledge with other folks as that's how community works; an equal growth of everyone!";

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: getLargeScreen(),
      smallScreen: getSmallScreen(),
    );
  }

  getLargeScreen() {
    _smallScreen = false;
    return Scaffold(
      body: getBody(),
    );
  }

  //TODO: Implement body for small screen
  getSmallScreen() {
    _smallScreen = true;
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
                getBottomImage(),
                Container(
                  margin: EdgeInsets.only(left: 40, top: 120),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: getLandingPageContent(),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          _smallScreen?getColumnForSmallScreen():getColumnForLargeScreen(),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                getPageHeader("FAQ SECTION"),
                SizedBox(
                  height: 18,
                ),
                getFaqs(),
                getFooter()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column getColumnForLargeScreen() {
    return Column(
          children: <Widget>[
            getPageHeader("ABOUT FLUTTER HANGOUTS"),
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
                      getCircleLabel("1"),
                      getAboutText(aboutFirstText)
                    ],
                  ),
                  SizedBox(
                    height: 160,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      getAboutText(aboutSecondText),
                      getCircleLabel("2"),
                    ],
                  ),
                  SizedBox(
                    height: 160,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      getCircleLabel("3"),
                      getAboutText(aboutThirdText)
                    ],
                  )
                ],
              ),
            )
          ],
        );
  }

  Container getPageHeader(String title) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / (_smallScreen ? 8.5 : 6.5),
      color: Color(0xff536DFE),
      child: Text(
        title,
        style: TextStyle(
          fontSize: _smallScreen ? 20 : 38,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  List<Widget> getLandingPageContent() {
    return <Widget>[
      Text("FLUTTER HANGOUTS",
          style: TextStyle(
              fontSize: _smallScreen ? 54 : 68, fontWeight: FontWeight.w800)),
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
                style: TextStyle(
                    fontSize: _smallScreen ? 16 : 20, color: Colors.grey),
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
                height: _smallScreen ? 48 : 60,
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
                        color: Colors.white, fontSize: _smallScreen ? 16 : 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    ];
  }

  Container getBottomImage() {
    return Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.bottomRight,
        child: Image.asset(
          "assets/images/mobile_development.png",
          width: _smallScreen ? 200 : 500,
          height: _smallScreen ? 200 : 500,
        ));
  }

  Column getColumnForSmallScreen() {
    return Column(
          children: <Widget>[
            getPageHeader('ABOUT FLUTTER HANGOUTS'),
            SizedBox(
              height: 18,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
              child: Column(
                children: <Widget>[
                  getCircleLabel("1"),
                  getAboutText(aboutFirstText),
                  SizedBox(
                    height: 80,
                  ),
                  getCircleLabel("2"),
                  getAboutText(aboutSecondText),
                  SizedBox(
                    height: 80,
                  ),
                  getCircleLabel("3"),
                  getAboutText(aboutThirdText),
                ],
              ),
            )
          ],
        );
  }

  Expanded getFaqs() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: ListView.separated(
          itemCount: 4,
          itemBuilder: (context, int) {
            return ExpansionTile(
              trailing: Icon(Icons.keyboard_arrow_down),
              title: Text(
                "What is Lorem Ipsum?",
                style: TextStyle(
                    fontSize: _smallScreen ? 18 : 20, color: Colors.white),
              ),
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                          fontSize: _smallScreen ? 16 : 18,
                          color: Colors.grey)),
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
    );
  }

  Container getAboutText(String text) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: _smallScreen ? width : width / 1.75,
        margin: EdgeInsets.only(top: 16),
        child: Text(
          text,
          style: TextStyle(
              fontSize: _smallScreen ? 18 : 20, color: Colors.white70),
          textAlign: TextAlign.justify,
        ));
  }

  ClipOval getCircleLabel(String text) {
    return ClipOval(
      child: Container(
        color: Color(0xffF76F74),
        alignment: Alignment.center,
        width: _smallScreen ? 60 : 100,
        height: _smallScreen ? 60 : 100,
        child: Text(
          text,
          style: TextStyle(
              fontSize: _smallScreen ? 20 : 32, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }

  getFooter() {
    return Container(
      margin: EdgeInsets.all(24),
      alignment: Alignment.bottomCenter,
      child: Text(
        "Made with Flutter by Flutter Vadodara",
        style: TextStyle(fontSize: _smallScreen ? 14 : 16, color: Colors.grey),
      ),
    );
  }
}
