import 'package:flutter/material.dart';

class RoundChip extends StatefulWidget {

  final IconData icon;
  final String text;
  final bool isSelected;
  final Color color;
  final double radius;
  final Color textColor;

  RoundChip(this.icon, this.text, this.isSelected,this.color, this.radius, this.textColor);

  @override
  RoundChipState createState() => RoundChipState(icon, text, isSelected,color,radius,textColor);

}

class RoundChipState extends State<RoundChip> {

  IconData icon;
  String text;
  bool isSelected;
  Color color,textColor;
  double radius;

  RoundChipState(this.icon, this.text, this.isSelected,this.color, this.radius, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      decoration: isSelected ? BoxDecoration(
          color: color.withOpacity(0.15),
          borderRadius: BorderRadius.all(Radius.circular(radius))
      ) : null,
      child: Row(
        children: <Widget>[
          Icon(icon, color: textColor,size: 16,),
          SizedBox(width: 4.0,),
          Text(text,textScaleFactor: 1, style: TextStyle(color: textColor, fontSize: 12.0),)
        ],
      ),
    );
  }
}