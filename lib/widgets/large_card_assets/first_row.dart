import 'package:flutter/material.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 70,
        ),
        Text(
          "Sales Analytics",
          style: TextStyle(
            fontFamily: "Calibri",
            fontSize: MediaQuery.of(context).size.width / 75,
            fontWeight: FontWeight.w700,
            color: const Color.fromARGB(255, 42, 82, 82),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 60,
        ),
        Indicator(
          title: "Income",
          color: const Color.fromARGB(255, 24, 209, 149),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 80,
        ),
        Indicator(
          title: "Outcome",
          color: const Color.fromARGB(255, 18, 142, 255),
        ),
        const Spacer(),
        DropDown(title: "Week"),
        SizedBox(
          width: MediaQuery.of(context).size.width / 70,
        ),
      ],
    );
  }
}

class DropDown extends StatelessWidget {
  String title;
  DropDown({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 18,
      height: MediaQuery.of(context).size.width / 48,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(180, 144, 144, 144)),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: "Calibri",
              fontSize: MediaQuery.of(context).size.width / 100,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 42, 82, 82),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
            child: Icon(
              Icons.arrow_drop_down,
              color: const Color.fromARGB(255, 42, 82, 82),
              size: MediaQuery.of(context).size.width / 80,
            ),
          ),
        ],
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  String title;
  Color color;
  Indicator({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 17,
      height: MediaQuery.of(context).size.height / 35,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(180, 144, 144, 144)),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 4.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 100,
            height: MediaQuery.of(context).size.width / 100,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(4),
              ),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: "Calibri",
              fontSize: MediaQuery.of(context).size.width / 120,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 42, 82, 82),
            ),
          )
        ],
      ),
    );
  }
}
