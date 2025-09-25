import 'package:flutter/material.dart';
import 'package:normal_irc/pages/chat_logs.dart';
import 'package:normal_irc/pages/member_list.dart';
import 'package:normal_irc/pages/navigation_views.dart';
import './criirc/criirc_adoptive_layout.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CriircAdoptiveLayout(children: [
      ChatNavigationPage(),
      ChatLogPage(),
      Container(
        constraints: const BoxConstraints(maxWidth: 400, minWidth: 333),
        child: const MemberListPage(),
      ),
    ]);
  }
}
