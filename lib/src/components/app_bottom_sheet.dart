import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  final Widget icon;
  final Widget child;
  const AppBottomSheet({super.key, required this.icon, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          showDragHandle: true,
          context: context,
          builder: (BuildContext context) {
            return child;
          },
        );
      },
      child: icon,
    );
  }
}
