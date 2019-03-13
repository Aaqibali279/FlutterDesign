import 'package:flutter/material.dart';
import 'package:flutter_demo/custom_widgets/custom_shape_clipper.dart';
import 'package:flutter_demo/utils/colors.dart';
import 'package:flutter_demo/custom_widgets/flight_item.dart';
import 'package:flutter_demo/utils/constants.dart';


class FlightsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var appBar = AppBar(
      title: Text(
        Constants.SEARCH_RESULTS,
        textScaleFactor: 1,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      elevation: 0.0,
    );

    return Scaffold(
      appBar: appBar,
      body:  ListView(
        physics: ClampingScrollPhysics(),
            children: <Widget>[
              FlightScreenTop(),
              FlightScreenBottom()
            ],
      ),
    );
  }
}

class FlightScreenTop extends StatefulWidget{

  FlightScreenTop();

  @override
  FlightScreenTopState createState() => FlightScreenTopState();
}

class FlightScreenTopState extends State<FlightScreenTop>{

  FlightScreenTopState();

  @override
  Widget build(BuildContext context) {
    return
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            padding: EdgeInsets.fromLTRB(32, 20, 32, 38),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    MyColors.instance.firstColor,
                    MyColors.instance.secondColor
                  ])),
            child: Material(
              elevation: 10.0,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 8,bottom: 8, left: 24),
                          child:  Text(Constants.BOSTON,textScaleFactor: 1,style: TextStyle(fontSize: 14),),
                        ),
                        Container(
                          height: 0.5,
                          margin: EdgeInsets.only(left: 24),
                          color: Colors.black,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 8,bottom: 8, left: 24),
                          child: Text(Constants.NEW_YORK,textScaleFactor: 1,style: TextStyle(fontSize: 14),),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Icon(Icons.import_export),
                  )
                ],
              ),
            ),
          ),
    );
  }
}




class FlightScreenBottom extends StatefulWidget{

  FlightScreenBottom();

  @override
  FlightScreenBottomState createState() => FlightScreenBottomState();
}

class FlightScreenBottomState extends State<FlightScreenBottom>{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20,bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0,top: 0,bottom: 0),
            child: Text(
              Constants.BEST_DEALS,
              textScaleFactor: 1,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10, itemBuilder: (context, index) {
              return FlightItem();
            }),
          )
        ],
      ),
    );
  }

}