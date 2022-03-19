import 'package:flutter/material.dart';

class AlertDismissButton extends StatelessWidget {
  const AlertDismissButton({
    Key? key,
    required this.dismiss,
  }) : super(key: key);

  final VoidCallback dismiss;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: dismiss,
          child: const Icon(
            Icons.close_rounded,
            color: Colors.black,
            size: 24,
          ),
        ),
      ),
    );
  }
}
