import 'package:flutter/material.dart';
import 'package:normal_irc/app_style.dart';
import 'package:normal_irc/widgets/custom_context_toolbar.dart';
import 'package:provider/provider.dart';

class AddServerWidget extends StatelessWidget {
  const AddServerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final appStyle = Provider.of<AppStyle>(context);
    final color = appStyle.color;

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: color),
        padding: const EdgeInsets.all(14),
        child: Text(
          "Add Server",
          textAlign: TextAlign.center,
          style: textTheme.bodyMedium!.copyWith(color: appStyle.bgColor),
        ),
      ),
    );
  }
}

class NewServerForm extends StatelessWidget {
  const NewServerForm({super.key});

  Widget inputField(String label, BuildContext context, {bool obscureText = false}) {
    final color = Provider.of<AppStyle>(context).color;

    return Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(color: color.withAlpha((255 * 0.07).round())),
        child: CustomInput(
          hint: label,
          obscureText: obscureText,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          // constraints: const BoxConstraints(maxHeight: 150, minHeight: 40),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: [
              inputField("servername", context),
              inputField("hostname", context),
              inputField("account", context),
              inputField("password", context, obscureText: true),
            ],
          ),
        ),
        const AddServerWidget(),
      ],
    );
  }
}

class NewServerPageWidget extends StatelessWidget {
  const NewServerPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Provider.of<AppStyle>(context).color;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(32),
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: 400),
          // padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            border: Border.all(color: color, width: 3),
          ),
          child: const NewServerForm(),
        ),
      ),
    );
  }

  static void open(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) {
          final textTheme = Theme.of(context).textTheme;
          final appStyle = Provider.of<AppStyle>(context);
          final color = appStyle.color;

          return Scaffold(
            appBar: AppBar(
              title: const Text("Connect to server"),
              titleTextStyle: textTheme.titleSmall,
              iconTheme: IconTheme.of(context).copyWith(color: color),
            ),
            body: const NewServerPageWidget(),
          );
        },
      ),
    );
  }
}
