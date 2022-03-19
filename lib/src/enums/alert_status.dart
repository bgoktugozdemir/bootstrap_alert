import 'package:bootstrap_alert/src/models/alert_color.dart';
import 'package:flutter/widgets.dart';

enum AlertStatus {
  primary,
  secondary,
  success,
  danger,
  warning,
  info,
  light,
  dark,
}

extension AlertStatusX on AlertStatus {
  AlertColor get alertColor => predefinedColors[this]!;

  Color get color => alertColor.color;
  Color get backgroundColor => alertColor.backgroundColor;
  Color get borderColor => alertColor.borderColor;
}
