import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  IconData icon;
  String title;
  bool badges;
  int notify;
  MenuItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.badges,
    required this.notify,
  }) : super(key: key);

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        width: 350.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: isHover ? const Color.fromARGB(255, 226, 237, 239) : null,
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              child: Icon(
                widget.icon,
                size: isHover ? 28.0 : 27.0,
                color: isHover
                    ? const Color.fromARGB(255, 29, 83, 83)
                    : const Color.fromARGB(255, 120, 149, 150),
              ),
            ),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: isHover ? 19 : 18,
                fontWeight: FontWeight.w600,
                fontFamily: "Calibri",
                color: isHover
                    ? const Color.fromARGB(255, 14, 72, 71)
                    : const Color.fromARGB(255, 91, 102, 102),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
              child: Container(
                width: 22.0,
                height: 22.0,
                decoration: BoxDecoration(
                  color: widget.badges
                      ? const Color.fromARGB(255, 1, 220, 130)
                      : null,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Center(
                  child: widget.badges
                      ? Text(
                          "${widget.notify}",
                          style: const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Calibri",
                              color: Color.fromARGB(255, 14, 72, 71)),
                        )
                      : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
