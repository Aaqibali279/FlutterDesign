import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/constants.dart';

class PopUpMenu extends StatefulWidget {
  @override
  PopUpMenuState createState() => PopUpMenuState();
}

class PopUpMenuState extends State<PopUpMenu> {

  var selected = Constants.BOSTON;

  PopUpMenuState();
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      child: Row(
        children: <Widget>[
          Text(
            selected,
            textScaleFactor: 1,
            style: TextStyle(color: Colors.white, fontSize: 14.0),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          )
        ],
      ),
      itemBuilder: (context) {
        return [Constants.BOSTON, Constants.NEW_YORK]
            .map((String choice) => PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice,textScaleFactor: 1,style: TextStyle(color: Colors.black, fontSize: 14.0)),
                ))
            .toList();
      },
      onSelected: (selected){
        setState(() {
          this.selected = selected;
        });
      },
    );
  }
}
