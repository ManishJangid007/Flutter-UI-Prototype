import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  Color color = const Color.fromARGB(255, 255, 255, 255);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
          color = value
              ? const Color.fromARGB(255, 226, 237, 239)
              : const Color.fromARGB(255, 255, 255, 255);
        });
      },
      mouseCursor: MouseCursor.defer,
      child: Container(
        width: 350.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/IMG_6755.jpeg"),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      "Manish Jangid",
                      style: TextStyle(
                        color: Color.fromARGB(255, 20, 75, 75),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "manish007@gmail.com",
                  style: TextStyle(
                    color: Color.fromARGB(255, 125, 127, 127),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: isHover
                  ? const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 15.0)
                  : const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 15.0),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18.0,
                color: Color.fromARGB(255, 146, 150, 150),
              ),
            )
          ],
        ),
      ),
    );
  }
}
