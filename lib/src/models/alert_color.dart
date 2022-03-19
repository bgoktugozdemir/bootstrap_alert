import 'dart:ui';

import 'package:bootstrap_alert/src/enums/enums.dart';

const Map<AlertStatus, AlertColor> predefinedColors = {
  AlertStatus.primary: AlertColor(
    color: Color(0xff084298),
    backgroundColor: Color(0xffcfe2ff),
    borderColor: Color(0xffb6d4fe),
  ),
  AlertStatus.secondary: AlertColor(
    color: Color(0xff41464b),
    backgroundColor: Color(0xffe2e3e5),
    borderColor: Color(0xffd3d6d8),
  ),
  AlertStatus.success: AlertColor(
    color: Color(0xff0f5132),
    backgroundColor: Color(0xffd1e7dd),
    borderColor: Color(0xffbadbcc),
  ),
  AlertStatus.danger: AlertColor(
    color: Color(0xff842029),
    backgroundColor: Color(0xfff8d7da),
    borderColor: Color(0xfff5c2c7),
  ),
  AlertStatus.warning: AlertColor(
    color: Color(0xff664d03),
    backgroundColor: Color(0xfffff3cd),
    borderColor: Color(0xffffecb5),
  ),
  AlertStatus.info: AlertColor(
    color: Color(0xff055160),
    backgroundColor: Color(0xffcff4fc),
    borderColor: Color(0xffb6effb),
  ),
  AlertStatus.light: AlertColor(
    color: Color(0xff636464),
    backgroundColor: Color(0xfffefefe),
    borderColor: Color(0xfffdfdfe),
  ),
  AlertStatus.dark: AlertColor(
    color: Color(0xff141619),
    backgroundColor: Color(0xffd3d3d4),
    borderColor: Color(0xffbcbebf),
  ),
};

class AlertColor {
  const AlertColor({
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
  });

  final Color color;

  final Color backgroundColor;

  final Color borderColor;
}
