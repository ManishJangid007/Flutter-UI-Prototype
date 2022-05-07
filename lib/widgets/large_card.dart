import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'large_card_assets/first_row.dart';

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
      height: MediaQuery.of(context).size.height / 2.4,
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
          SizedBox(
            height: MediaQuery.of(context).size.width / 70,
          ),
          const FirstRow(),
        ],
      ),
    );
  }
}
