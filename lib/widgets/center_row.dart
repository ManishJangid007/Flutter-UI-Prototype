import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'medium_card.dart';
import 'small_card.dart';

class CenterRow extends StatelessWidget {
  const CenterRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gap = 45;
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(40.0, 50.0, 20.0, 5.0),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SmallCard(
                    title: "Total Sales",
                    amount: "362,929",
                    percentage: 20,
                    negative: false,
                    accent_color: const Color.fromARGB(255, 246, 249, 254),
                    icon_color: const Color.fromARGB(255, 25, 134, 242),
                    icon: CupertinoIcons.bag_fill,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / gap,
                  ),
                  SmallCard(
                    title: "Total Expense",
                    amount: "123,772",
                    percentage: 12,
                    negative: true,
                    accent_color: const Color.fromARGB(255, 255, 246, 247),
                    icon_color: const Color.fromARGB(255, 255, 44, 64),
                    icon: CupertinoIcons.chart_pie_fill,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / gap,
              ),
              LargeCard(),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / gap,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MediumCard(),
              SizedBox(
                height: MediaQuery.of(context).size.width / gap,
              ),
              MediumCard2(),
            ],
          )
        ],
      ),
    );
  }
}

class LargeCard extends StatefulWidget {
  LargeCard({Key? key}) : super(key: key);

  @override
  State<LargeCard> createState() => _LargeCardState();
}

class _LargeCardState extends State<LargeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.94,
      height: MediaQuery.of(context).size.height / 2.5,
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

class MediumCard2 extends StatefulWidget {
  MediumCard2({Key? key}) : super(key: key);

  @override
  State<MediumCard2> createState() => _MediumCard2State();
}

class _MediumCard2State extends State<MediumCard2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4.9,
      height: MediaQuery.of(context).size.height / 4.75,
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
