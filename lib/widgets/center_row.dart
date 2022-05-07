import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'large_card.dart';
import 'medium2_card.dart';
import 'medium_card.dart';
import 'small_card.dart';

class CenterRow extends StatelessWidget {
  const CenterRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gap = 45;
    return SingleChildScrollView(
      reverse: false,
      padding: const EdgeInsets.fromLTRB(40.0, 50.0, 20.0, 5.0),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
