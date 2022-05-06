import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopRow extends StatelessWidget {
  const TopRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 42.0, 30.0, 0.0),
      child: Row(
        children: [
          const Text(
            "Good Morning",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
              fontFamily: "Calibri",
              color: Color.fromARGB(255, 14, 68, 68),
            ),
          ),
          const Spacer(),
          SearchBar(),
          const SizedBox(
            width: 15.0,
          ),
          NotificationIcon(),
          const SizedBox(
            width: 15.0,
          ),
          SettingIcon(),
        ],
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 5,
      height: 45,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            width: 20.0,
          ),
          Icon(
            Icons.search_rounded,
            size: 25,
            color: Color.fromARGB(255, 0, 57, 57),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 5.0),
            child: Text(
              "Tap to search",
              style: TextStyle(
                color: Color.fromARGB(255, 95, 106, 106),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NotificationIcon extends StatefulWidget {
  NotificationIcon({Key? key}) : super(key: key);

  @override
  State<NotificationIcon> createState() => _NotificationIconState();
}

class _NotificationIconState extends State<NotificationIcon> {
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
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: isHover
              ? Colors.greenAccent
              : const Color.fromARGB(255, 238, 245, 246),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Center(
          child: Icon(
            CupertinoIcons.bell_fill,
            color: isHover
                ? const Color.fromARGB(255, 29, 83, 83)
                : const Color.fromARGB(255, 120, 149, 150),
          ),
        ),
      ),
    );
  }
}

class SettingIcon extends StatefulWidget {
  SettingIcon({Key? key}) : super(key: key);

  @override
  State<SettingIcon> createState() => _SettingIconState();
}

class _SettingIconState extends State<SettingIcon> {
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
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: isHover
              ? Colors.greenAccent
              : const Color.fromARGB(255, 238, 245, 246),
          borderRadius: const BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
        child: Center(
          child: Icon(
            Icons.settings,
            color: isHover
                ? const Color.fromARGB(255, 29, 83, 83)
                : const Color.fromARGB(255, 120, 149, 150),
          ),
        ),
      ),
    );
  }
}
