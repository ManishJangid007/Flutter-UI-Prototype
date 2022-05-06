import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallCard extends StatefulWidget {
  String title;
  String amount;
  int percentage;
  bool negative;
  Color accent_color;
  Color icon_color;
  IconData icon;
  SmallCard({
    Key? key,
    required this.title,
    required this.amount,
    required this.percentage,
    required this.negative,
    required this.accent_color,
    required this.icon_color,
    required this.icon,
  }) : super(key: key);

  @override
  State<SmallCard> createState() => _SmallCardState();
}

class _SmallCardState extends State<SmallCard> {
  @override
  Widget build(BuildContext context) {
    double right_margin = MediaQuery.of(context).size.width / 20;
    return Container(
      width: MediaQuery.of(context).size.width / 4.05,
      height: MediaQuery.of(context).size.height / 7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 0.0),
            blurRadius: 5.0,
            color: Color.fromARGB(255, 199, 199, 199),
          ),
        ],
      ),
    );
  }
}
