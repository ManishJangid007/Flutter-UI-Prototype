import 'package:ams_prototype/widgets/bottom_row.dart';
import 'package:ams_prototype/widgets/center_row.dart';
import 'package:ams_prototype/widgets/top_row.dart';
import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopRow(),
              const CenterRow(),
              SizedBox(
                height: MediaQuery.of(context).size.width / 50,
              ),
              const BottomRow(),
            ],
          ),
        ),
      ),
    );
  }
}
