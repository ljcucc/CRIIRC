import 'package:flutter/material.dart';
import 'package:normal_irc/app_style.dart';
import 'package:normal_irc/widgets/custom_context_toolbar.dart';
import 'package:provider/provider.dart';

class CriircTextField extends StatelessWidget {
  const CriircTextField({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    final color = Provider.of<AppStyle>(context).color;

    return Container(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: CustomInput(hint: hintText));
  }
}
