import 'package:flutter/material.dart';

class WelcomeScreenWidget extends StatelessWidget {
  const WelcomeScreenWidget({super.key});

  pageOne(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Text(
                "Welcome!",
                style: textTheme.titleLarge!.copyWith(fontSize: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        pageOne(context),
        const Text("2"),
        const Text("3"),
      ],
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static open(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) {
          return const WelcomeScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        // title: Text("Welcome"),
        // titleTextStyle: textTheme.titleMedium,
        // iconTheme: IconTheme.of(context).copyWith(color: color),
      ),
      body: const WelcomeScreenWidget(),
    );
  }
}
