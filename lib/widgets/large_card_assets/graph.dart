import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GraphBase(),
      ],
    );
  }
}

class GraphBase extends StatelessWidget {
  const GraphBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double verticalGap = 26;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HorizontalArray(
          numb: "8k",
          line: true,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / verticalGap,
        ),
        HorizontalArray(
          numb: "6k",
          line: true,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / verticalGap,
        ),
        HorizontalArray(
          numb: "4k",
          line: true,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / verticalGap,
        ),
        HorizontalArray(
          numb: "2k",
          line: true,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / verticalGap,
        ),
        HorizontalArray(
          numb: "0",
          line: false,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 60,
        ),
        VerticalArray(),
      ],
    );
  }
}

class VerticalArray extends StatelessWidget {
  double horizontalGap = 33;

  VerticalArray({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
        ),
        DateText(date: "18 Feb"),
        SizedBox(
          width: MediaQuery.of(context).size.width / horizontalGap,
        ),
        DateText(date: "19 Feb"),
        SizedBox(
          width: MediaQuery.of(context).size.width / horizontalGap,
        ),
        DateText(date: "20 Feb"),
        SizedBox(
          width: MediaQuery.of(context).size.width / horizontalGap,
        ),
        DateText(date: "21 Feb"),
        SizedBox(
          width: MediaQuery.of(context).size.width / horizontalGap,
        ),
        DateText(date: "22 Feb"),
        SizedBox(
          width: MediaQuery.of(context).size.width / horizontalGap,
        ),
        DateText(date: "23 Feb"),
        SizedBox(
          width: MediaQuery.of(context).size.width / horizontalGap,
        ),
        DateText(date: "24 Feb"),
        SizedBox(
          width: MediaQuery.of(context).size.width / horizontalGap,
        ),
        DateText(date: "25 Feb")
      ],
    );
  }
}

class DateText extends StatelessWidget {
  String date;
  DateText({
    Key? key,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.width / 100,
        fontFamily: "Calibri",
        fontWeight: FontWeight.w800,
        color: const Color.fromARGB(255, 184, 187, 189),
      ),
    );
  }
}

class HorizontalArray extends StatelessWidget {
  String numb;
  bool line;
  HorizontalArray({
    Key? key,
    required this.numb,
    required this.line,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 70,
        ),
        Text(
          numb,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 100,
            fontFamily: "Calibri",
            fontWeight: FontWeight.w800,
            color: const Color.fromARGB(255, 184, 187, 189),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 70,
        ),
        line
            ? Container(
                width: MediaQuery.of(context).size.width / 2.17,
                height: MediaQuery.of(context).size.width / 800,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 218, 221, 224),
                ),
              )
            : Container()
      ],
    );
  }
}
