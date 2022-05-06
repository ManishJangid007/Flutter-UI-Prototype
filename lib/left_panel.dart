import 'package:ams_prototype/widgets/left_menu_item.dart' as menuitem;
import 'package:ams_prototype/widgets/left_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_card.dart';

class LeftPanel extends StatelessWidget {
  const LeftPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width / 3.0,
        minWidth: MediaQuery.of(context).size.width / 4.6,
        maxHeight: double.maxFinite,
        minHeight: MediaQuery.of(context).size.height,
      ),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 238, 245, 246),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: LeftTitle(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: ProfileCard(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
              child: menuitem.MenuItem(
                icon: CupertinoIcons.person_2_fill,
                title: "Client List",
                badges: true,
                notify: 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 0.0),
              child: menuitem.MenuItem(
                icon: Icons.card_travel_rounded,
                title: "Active Projects",
                badges: false,
                notify: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 0.0),
              child: menuitem.MenuItem(
                icon: Icons.my_library_books_rounded,
                title: "Invoices",
                badges: false,
                notify: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 0.0),
              child: menuitem.MenuItem(
                icon: CupertinoIcons.calendar_today,
                title: "Calender",
                badges: false,
                notify: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 0.0),
              child: menuitem.MenuItem(
                icon: CupertinoIcons.chat_bubble_2_fill,
                title: "Messages",
                badges: true,
                notify: 3,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
              child: Container(width: 350.0, height: 50.0, child: Divider()),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: menuitem.MenuItem(
                icon: Icons.question_answer_rounded,
                title: "Help Center",
                badges: false,
                notify: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
              child: menuitem.MenuItem(
                icon: CupertinoIcons.question_circle_fill,
                title: "About",
                badges: false,
                notify: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
