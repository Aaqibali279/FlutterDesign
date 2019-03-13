import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/constants.dart';

class CityCard extends StatelessWidget {
  final String imagePath;

  CityCard(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.red,
                  height: 190,
                  width: 160,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black,
                              Colors.black.withOpacity(0.3),
                              Colors.black.withOpacity(0.0)
                            ])),
                  ),
                ),


                Positioned(
                    left: 10,
                    bottom: 10,
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              Constants.BOSTON,
                              textScaleFactor: 1,
                              style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w700),
                            ),
                            Text(
                              Constants.DATE,
                              textScaleFactor: 1,
                              style: TextStyle(color: Colors.white70, fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                ),



                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Text(
                        Constants.DISCOUNT,
                        textScaleFactor: 1,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),


          Padding(
              padding: EdgeInsets.all(4),
              child: Row(
                children: <Widget>[
                  Text(
                    Constants.DISCOUNTED_PRICE,
                    textScaleFactor: 1,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(Constants.ACTUAL_PRICE,
                      textScaleFactor: 1,
                      style: TextStyle(
                        color: Colors.black26,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        decoration: TextDecoration.lineThrough,
                      ),
                      textAlign: TextAlign.left),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
