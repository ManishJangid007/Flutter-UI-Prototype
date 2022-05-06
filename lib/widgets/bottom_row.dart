import 'package:flutter/material.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 20.0, 20.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.35,
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
      ),
    );
  }
}
