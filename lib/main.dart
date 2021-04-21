import 'package:flutter/material.dart';
import 'constents.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desk Club',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image(
              image: AssetImage('assets/logo.png'),
            ),
            Center(
                child: Row(
              children: [
                Text(
                  "Workspace",
                  style: menuFontStyle,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Locations",
                  style: menuFontStyle,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 15,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "About",
                  style: menuFontStyle,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Contact",
                  style: menuFontStyle,
                ),
              ],
            )),
            MaterialButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: primaryColor, width: 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              textColor: primaryColor,
              onPressed: () {},
              child: Text(
                "Log In",
                style: menuFontStyle,
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 25.0),
            child: Center(
              child: Text(
                "Together we can\ncreate better work",
                textAlign: TextAlign.center,
                style: boldTextStyle,
              ),
            ),
          ),
          Center(
            child: Text(
              "From desks to offices and entire headquarters, we create\nenvironments for productivity, innovation and connection.",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Center(
              child: Container(
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  color: primaryColor,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.search),
                      Text("Find Workspace"),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 30.0),
            child: Image(
              image: AssetImage('assets/cover.png'),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Text(
              "WHAT WE OFFER",
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
            child: Text(
              "From desks to offices\nand entire headquarters",
              style: boldTextStyle,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    child: Image(
                      image: AssetImage('assets/image1.png'),
                    ),
                  ),
                  Container(
                    width: 180,
                    child: Image(
                      image: AssetImage('assets/image2.png'),
                    ),
                  ),
                  Container(
                    width: 180,
                    child: Image(
                      image: AssetImage('assets/image1.png'),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
