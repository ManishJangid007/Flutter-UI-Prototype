import 'package:flutter/material.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 20.0, 20.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.35,
        height: MediaQuery.of(context).size.height / 4,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width / 70,
              ),
              const TitleRow(),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 10.0),
                child: Table(
                  textDirection: TextDirection.ltr,
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 238, 245, 246),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                              MediaQuery.of(context).size.height / 150),
                        ),
                      ),
                      children: [
                        HeadingText(text: "No"),
                        HeadingText(text: "Order ID"),
                        HeadingText(text: "Product"),
                        HeadingText(text: "Customer"),
                        HeadingText(text: "Date"),
                        HeadingText(text: "Price"),
                        HeadingText(text: "Sales"),
                        HeadingText(text: "Status"),
                      ],
                    ),
                    TableRow(
                      children: [
                        FieldText(text: '1'),
                        FieldText(text: '488392920020383030'),
                        FieldText(text: 'Headset'),
                        FieldText(text: 'Ikhawata Andy Pratama'),
                        FieldText(text: '21 Feb'),
                        PriceText(text: '\$21,23'),
                        FieldText(text: '900'),
                        StatusIndicator(positive: true),
                      ],
                    ),
                    TableRow(
                      children: [
                        FieldText(text: '2'),
                        FieldText(text: '166771281208747478'),
                        FieldText(text: 'Drone'),
                        FieldText(text: 'Lionel Messi'),
                        FieldText(text: '21 Feb'),
                        PriceText(text: '\$30,99'),
                        FieldText(text: '836'),
                        StatusIndicator(positive: false),
                      ],
                    ),
                    TableRow(
                      children: [
                        FieldText(text: '3'),
                        FieldText(text: '856453214598787021'),
                        FieldText(text: 'Bag'),
                        FieldText(text: 'Jimmy Parker'),
                        FieldText(text: '21 Feb'),
                        PriceText(text: '\$11,54'),
                        FieldText(text: '520'),
                        StatusIndicator(positive: true),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusIndicator extends StatelessWidget {
  bool positive;
  StatusIndicator({
    Key? key,
    required this.positive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
      child: positive
          ? Text(
              "Completed",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 100,
                fontFamily: "Calibri",
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 26, 209, 152),
              ),
            )
          : Text(
              "Canceled",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 100,
                fontFamily: "Calibri",
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 255, 44, 64),
              ),
            ),
    );
  }
}

class PriceText extends StatelessWidget {
  String text;
  PriceText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width / 100,
          fontFamily: "Calibri",
          fontWeight: FontWeight.w600,
          color: const Color.fromARGB(255, 26, 209, 152),
        ),
      ),
    );
  }
}

class FieldText extends StatelessWidget {
  String text;
  FieldText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width / 100,
          fontFamily: "Calibri",
          fontWeight: FontWeight.w800,
          color: Colors.black,
        ),
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  String text;
  HeadingText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width / 100,
          fontFamily: "Calibri",
          fontWeight: FontWeight.w800,
          color: const Color.fromARGB(255, 184, 187, 189),
        ),
      ),
    );
  }
}

class TitleRow extends StatelessWidget {
  const TitleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 70,
        ),
        Text(
          "Manage Orders",
          style: TextStyle(
            fontFamily: "Calibri",
            fontSize: MediaQuery.of(context).size.width / 75,
            fontWeight: FontWeight.w700,
            color: const Color.fromARGB(255, 42, 82, 82),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
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
    );
  }
}
