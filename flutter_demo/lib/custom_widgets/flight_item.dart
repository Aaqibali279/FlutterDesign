import 'package:flutter/material.dart';
import 'round_chip.dart';
import 'package:flutter_demo/utils/colors.dart';
import 'package:flutter_demo/utils/constants.dart';

class FlightItem extends StatelessWidget {

  FlightItem();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
          child: Material(
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey, width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              height: 100,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          Constants.DISCOUNTED_PRICE,
                          textScaleFactor: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          Constants.ACTUAL_PRICE,
                          textScaleFactor: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: Colors.black26,
                            decoration: TextDecoration.lineThrough,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          RoundChip(Icons.date_range, Constants.DATE, true,Colors.grey,10,Colors.black),
                          SizedBox(width: 5,),
                          RoundChip(Icons.flight, Constants.AIRWAYS, true,Colors.grey,10,Colors.black),
                          SizedBox(width: 5,),
                          RoundChip(Icons.star, Constants.RATING, true,Colors.grey,10,Colors.black),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),

        Positioned(
            right: 0,
            top: 20,
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(12.5)),
              color: MyColors.instance.primaryColor.withOpacity(0.2),
              child: Container(
                width: 50,
                height: 25,
                child: Center(
                  child: Text(Constants.DISCOUNT,textScaleFactor:1,style: TextStyle(color: MyColors.instance.primaryColor,fontWeight: FontWeight.w700),),
                ),
              ),
            )
        )

      ],
    );
  }
}
