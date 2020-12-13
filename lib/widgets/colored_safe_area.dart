import 'package:flutter/material.dart';
import 'package:spa_coding_exercise/values/app_theme.dart';

class ColoredSafeArea extends StatelessWidget {
  final Widget child;
  final Color statusColor;
  final Color navigationColor;

  const ColoredSafeArea(
      {Key key, @required this.child, this.statusColor, this.navigationColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              _statusColor(context),
              _navigationColor(context)
            ]),
      ),
      child: SafeArea(
        child: child,
      ),
    );
  }

  Color _statusColor(BuildContext context) =>
      statusColor ?? context.backgroundColor();

  Color _navigationColor(BuildContext context) =>
      navigationColor ?? _statusColor(context);
}
