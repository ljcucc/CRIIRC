import 'package:flutter/material.dart';
import 'package:normal_irc/app_style.dart';
import 'package:provider/provider.dart';
import 'package:marquee/marquee.dart';

class NewServerOptionWidget extends StatelessWidget {
  final String name;
  const NewServerOptionWidget({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return RotatedBox(
      quarterTurns: -1,
      child: Center(
        child: Text(
          name,
          style: textTheme.titleLarge!.copyWith(fontSize: 46),
        ),
      ),
    );
  }
}

class ServerListSelectorWidget extends StatelessWidget {
  const ServerListSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: ListWheelScrollView(
        itemExtent: 300,
        diameterRatio: 10,
        squeeze: 0.9,
        // magnification: 1,
        // useMagnifier: true,
        children: const [
          NewServerOptionWidget(name: "Help &\nAbout"),
          NewServerOptionWidget(name: "Libera\nChat"),
          NewServerOptionWidget(name: "Matrix\nServer"),
        ],
      ),
    );
  }
}

class ServerListWidget extends StatelessWidget {
  const ServerListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Provider.of<AppStyle>(context).color;

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: 60, bottom: 60),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Center(
                child: Text(
                  "Entrance\n↓",
                  style: textTheme.titleLarge!.copyWith(fontSize: 46),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          color: color.withAlpha((255 * 0.1).round()),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: color,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const ServerListSelectorWidget(),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

class ServerListItem extends StatefulWidget {
  const ServerListItem({super.key, required this.name});

  final String name;

  @override
  State<ServerListItem> createState() => _ServerListItemState();
}

class _ServerListItemState extends State<ServerListItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Provider.of<AppStyle>(context).color;

    return InkWell(
      onHover: (value) {
        setState(() => isHover = value);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 32, bottom: 32),
        decoration: BoxDecoration(
          color: isHover ? color.withAlpha((255 * 0.1).round()) : null,
          border: Border.all(width: 3, color: color),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Marquee(
          text: "${widget.name} ",
          style: textTheme.titleLarge!.copyWith(
            // color: Colors.white,
            fontSize: 80.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}

class ServerListWidget2 extends StatelessWidget {
  const ServerListWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          // padding: EdgeInsets.all(8),
          child: ListView(
            padding: EdgeInsets.zero,
            itemExtent: 180,
            children: const [
              ServerListItem(name: "LiberaChat"),
              ServerListItem(name: "Matrix server"),
              ServerListItem(name: "Help & documents"),
            ],
          ),
        ),
      ),
    );
  }
}
