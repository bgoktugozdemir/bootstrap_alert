import 'package:flutter/widgets.dart';

class AlertText extends StatelessWidget {
  const AlertText({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.5,
      ),
    );
  }
}
