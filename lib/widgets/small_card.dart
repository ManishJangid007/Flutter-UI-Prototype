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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 70,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 19,
            height: MediaQuery.of(context).size.height / 11,
            decoration: BoxDecoration(
              color: widget.accent_color,
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Center(
              child: Icon(
                widget.icon,
                color: widget.icon_color,
                size: MediaQuery.of(context).size.width / 50,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 70,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  color: const Color.fromARGB(255, 161, 160, 160),
                  fontSize: MediaQuery.of(context).size.width / 80,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Calibri",
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              Text(
                "\$${widget.amount}",
                style: TextStyle(
                  color: const Color.fromARGB(255, 42, 82, 82),
                  fontSize: MediaQuery.of(context).size.width / 45,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Calibri",
                ),
              )
            ],
          ),
          const Spacer(),
          Icon(
            widget.negative
                ? CupertinoIcons.arrow_down_circle_fill
                : CupertinoIcons.arrow_up_circle_fill,
            color: widget.negative
                ? const Color.fromARGB(255, 255, 44, 64)
                : Colors.greenAccent,
            size: MediaQuery.of(context).size.width / 60,
          ),
          const SizedBox(
            width: 5.0,
          ),
          widget.negative
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                  child: Text(
                    "-${widget.percentage}%",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 80,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 255, 44, 64),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                  child: Text(
                    "+${widget.percentage}%",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 80,
                      fontWeight: FontWeight.w600,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
          const Spacer(),
        ],
      ),
    );
  }
}
