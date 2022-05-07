import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediumCard extends StatelessWidget {
  const MediumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4.9,
      height: MediaQuery.of(context).size.height / 3,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 15.0, 0.0, 0.0),
                child: Text(
                  "Recent Transaction",
                  style: TextStyle(
                    fontFamily: "Calibri",
                    fontSize: MediaQuery.of(context).size.width / 75,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 42, 82, 82),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 15.0, 25.0, 0.0),
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 90,
                    fontFamily: "Calibri",
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 29, 83, 83),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(25.0, 30.0, 22.0, 10.0),
              child: Column(
                children: [
                  Item(
                    icon: CupertinoIcons.camera_fill,
                    title: "Camera Canon",
                    date: "2 January 2021",
                    amount: "29,23",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 65,
                  ),
                  Item(
                    icon: CupertinoIcons.paintbrush_fill,
                    title: "Makeup",
                    date: "15 January 2021",
                    amount: "12,88",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 65,
                  ),
                  Item(
                    icon: Icons.headphones_rounded,
                    title: "Headphone",
                    date: "28 January 2021",
                    amount: "32,92",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 65,
                  ),
                  Item(
                    icon: Icons.earbuds_rounded,
                    title: "Earphones",
                    date: "28 January 2021",
                    amount: "25,87",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 100,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Item extends StatefulWidget {
  IconData icon;
  String title;
  String date;
  String amount;
  Item({
    Key? key,
    required this.icon,
    required this.title,
    required this.date,
    required this.amount,
  }) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.width / 30,
          width: MediaQuery.of(context).size.width / 30,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 224, 235, 237),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Center(
            child: Icon(
              widget.icon,
              color: const Color.fromARGB(255, 71, 89, 90),
            ),
          ),
        ),
        const SizedBox(
          width: 15.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 80,
                fontFamily: "Calibri",
                fontWeight: FontWeight.w800,
                color: const Color.fromARGB(255, 42, 82, 82),
              ),
            ),
            Text(
              widget.date,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 100,
                fontFamily: "Calibri",
                fontWeight: FontWeight.w800,
                color: const Color.fromARGB(255, 184, 187, 189),
              ),
            )
          ],
        ),
        const Spacer(),
        Text(
          "\$${widget.amount}",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 80,
            fontFamily: "Calibri",
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 42, 82, 82),
          ),
        ),
      ],
    );
  }
}
