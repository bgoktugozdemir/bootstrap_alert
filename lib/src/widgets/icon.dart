import 'package:flutter/widgets.dart';

class AlertIcon extends StatelessWidget {
  const AlertIcon({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Icon(
        icon,
        color: color,
        size: 24,
      ),
    );
  }
}
