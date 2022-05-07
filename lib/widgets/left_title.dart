import 'package:flutter/material.dart';

class LeftTitle extends StatelessWidget {
  const LeftTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 1, 220, 130),
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 3.0),
                child: Text(
                  "S",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 0, 60, 60),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          const Flexible(
            child: Text(
              "Sales Manager",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                fontFamily: "Calibri",
                color: Color.fromARGB(255, 14, 68, 68),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
