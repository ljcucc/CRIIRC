import 'package:flutter/material.dart';
import 'package:normal_irc/pages/chat_logs.dart';
import 'package:normal_irc/pages/navigation_views.dart';
import 'package:normal_irc/pages/member_list.dart';
import 'package:normal_irc/utils.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  List<Widget> get layouts => [
        Flexible(
          flex: 20,
          child: Container(
            child: ChatNavigationPage(),
          ),
        ),
        Flexible(
          flex: 40,
          child: Container(
            child: ChatLogPageWidget(),
          ),
        ),
        Flexible(
          flex: 20,
          child: Container(
            constraints: BoxConstraints(maxWidth: 400, minWidth: 333),
            child: MemberListPage(),
          ),
        ),
      ];

  Widget UI(int layoutInt) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          // children: layouts,
          children: layouts.sublist(0, layoutInt),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      int layoutInt = getLayoutInt(context);
      return UI(layoutInt);
    });
  }
}
