import 'package:flutter/material.dart';

class MediumCard2 extends StatelessWidget {
  MediumCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4.9,
      height: MediaQuery.of(context).size.height / 4.4,
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
                  "Sales",
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
              padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Item(
                    img: const AssetImage("assets/IMG_6747.PNG"),
                    title: "Ikhwata Andy",
                    id: "12804889939",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 200,
                  ),
                  const Divider(),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 200,
                  ),
                  Item(
                    img: const AssetImage("assets/IMG_6754.jpeg"),
                    title: "Timo Werner",
                    id: "14812391239",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 200,
                  ),
                  const Divider(),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 200,
                  ),
                  Item(
                    img: const AssetImage("assets/legion.png"),
                    title: "Jimmy Parker",
                    id: "88452654539",
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
  AssetImage img;
  String title;
  String id;
  Item({
    Key? key,
    required this.img,
    required this.title,
    required this.id,
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
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            image: DecorationImage(
              image: widget.img,
              fit: BoxFit.cover,
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
              "ID : ${widget.id}",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 100,
                fontFamily: "Calibri",
                fontWeight: FontWeight.w800,
                color: const Color.fromARGB(255, 184, 187, 189),
              ),
            )
          ],
        ),
      ],
    );
  }
}
