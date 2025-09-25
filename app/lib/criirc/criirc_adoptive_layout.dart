import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

enum LayoutType {
  compact,
  medium,
  expanded,
}

LayoutType getLayoutType(BuildContext context) {
  LayoutType layoutType = LayoutType.compact;

  final width = MediaQuery.of(context).size.width;
  final orientation = MediaQuery.of(context).orientation;

  // layout based on screen size ( if landscape )
  if (width < 750) {
    layoutType = LayoutType.compact;
  } else if (width < 1200) {
    layoutType = LayoutType.medium;
  } else {
    layoutType = LayoutType.expanded;
  }

  // overwrite layout based on orientation
  if (orientation == Orientation.portrait) {
    layoutType = LayoutType.compact;
  }

  return layoutType;
}

class CriircAdoptiveLayout extends StatelessWidget {
  final List<Widget> children;

  const CriircAdoptiveLayout({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      LayoutType layoutType = getLayoutType(context);

      return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(32),
          child: Row(
            children: [
              Flexible(
                flex: 20,
                child: children[0],
              ),
              if (layoutType == LayoutType.medium || layoutType == LayoutType.expanded) ...[
                Gap(32),
                Flexible(
                  flex: 40,
                  child: children.length >= 2 ? children[1] : Placeholder(),
                ),
              ],
              if (layoutType == LayoutType.expanded) ...[
                Gap(32),
                Flexible(
                  flex: 20,
                  child: children.length >= 3 ? children[2] : Placeholder(),
                ),
              ]
            ],
          ),
        ),
      );
    });
  }
}
