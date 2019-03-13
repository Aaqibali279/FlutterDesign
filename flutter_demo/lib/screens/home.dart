import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/colors.dart';
import 'package:flutter_demo/custom_widgets/custom_shape_clipper.dart';
import 'package:flutter_demo/custom_widgets/pop_menu.dart';
import 'package:flutter_demo/custom_widgets/round_chip.dart';
import 'package:flutter_demo/custom_widgets/city_card.dart';
import 'package:flutter_demo/custom_widgets/bottom_nav_bar.dart';
import 'package:flutter_demo/screens/flights.dart';
import 'package:flutter_demo/utils/constants.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            SizedBox(
              width: 16.0,
            ),
            PopUpMenu(),
            Spacer(),
            Icon(
              Icons.settings,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          HomeScreenTop(),
          HomeScreenBottom(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

//TOP
class HomeScreenTop extends StatefulWidget {
  @override
  HomeScreenTopState createState() => HomeScreenTopState();
}

class HomeScreenTopState extends State<HomeScreenTop> {
  var isFlightSelected = true;
  var isHotelSelected = false;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShapeClipper(),
      child: Container(
        padding: EdgeInsets.only(bottom: 50),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          MyColors.instance.firstColor,
          MyColors.instance.secondColor
        ])),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(Constants.GO_HINT,
              textScaleFactor: 1,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 10.0),
              child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: TextField(
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    cursorColor: MyColors.instance.primaryColor,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: Constants.DESTINATION,
                        contentPadding:
                            EdgeInsets.fromLTRB(16.0, 15.0, 16.0, 15.0),
                        suffixIcon: InkWell(
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Icon(Icons.search, color: Colors.black54),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FlightsScreen()));
                          },
                        )),
                  )),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      isFlightSelected = !isFlightSelected;
                    });
                  },
                  child: RoundChip(Icons.flight_takeoff, Constants.FLIGHTS,
                      isFlightSelected, Colors.white, 18.0, Colors.white),
                ),
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  child: RoundChip(Icons.hotel, Constants.HOTELS, isHotelSelected,
                      Colors.white, 18.0, Colors.white),
                  onTap: () {
                    setState(() {
                      isHotelSelected = !isHotelSelected;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

//BOTTOM
class HomeScreenBottom extends StatefulWidget {
  @override
  HomeScreenBottomState createState() => HomeScreenBottomState();
}

class HomeScreenBottomState extends State<HomeScreenBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: <Widget>[
                Text(
                  Constants.RECENTLY_VIEWED,
                  textScaleFactor: 1,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Spacer(),
                Text(
                  Constants.VIEW_ALL,
                  textScaleFactor: 1,
                  style: TextStyle(
                      fontSize: 14, color: MyColors.instance.primaryColor),
                )
              ],
            ),
          ),
          Container(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CityCard('images/forest.jpeg'),
                CityCard('images/ball.jpeg'),
                CityCard('images/aaaa.png'),
                CityCard('images/aaaaEye.jpeg'),
                CityCard('images/aaaanimal.jpeg'),
                CityCard('images/aaaapeace.jpeg'),
                CityCard('images/aaarose.jpeg'),
                CityCard('images/mac2.jpeg')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: <Widget>[
                Text(
                  Constants.POPULAR,
                  textScaleFactor: 1,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Spacer(),
                Text(
                  Constants.VIEW_ALL,
                  textScaleFactor: 1,
                  style: TextStyle(
                      fontSize: 14, color: MyColors.instance.primaryColor),
                )
              ],
            ),
          ),
          Container(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CityCard('images/aaaaEye.jpeg'),
                CityCard('images/aaaanimal.jpeg'),
                CityCard('images/aaaapeace.jpeg'),
                CityCard('images/aaarose.jpeg'),
                CityCard('images/mac2.jpeg'),
                CityCard('images/forest.jpeg'),
                CityCard('images/ball.jpeg'),
                CityCard('images/aaaa.png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
