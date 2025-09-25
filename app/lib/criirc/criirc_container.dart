import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:normal_irc/app_style.dart';

class CriircContainer extends StatelessWidget {
  const CriircContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final appStyle = Provider.of<AppStyle>(context);
    final color = appStyle.color;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.5,
          color: color,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
