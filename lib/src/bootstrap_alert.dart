import 'dart:async';

import 'package:bootstrap_alert/src/enums/enums.dart';
import 'package:bootstrap_alert/src/models/alert_color.dart';
import 'package:bootstrap_alert/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

const _defaultMargin = EdgeInsets.only(bottom: 16);
const _defaultPadding = EdgeInsets.all(16);
final _defaultBorderRadius = BorderRadius.circular(4);
const _defaultAlertStatus = AlertStatus.primary;

class BootstrapAlert extends StatefulWidget {
  const BootstrapAlert({
    Key? key,
    required this.text,
    this.leadingIcon,
    this.margin,
    this.padding,
    this.borderRadius,
    this.autoCloseDuration,
    this.onDismissed,
    this.visible = false,
    this.isDismissible = false,
    this.status = _defaultAlertStatus,
  }) : super(key: key);

  /// Text in the [BootstrapAlert].
  final String text;

  /// Defines the visibility of the [BootstrapAlert].
  final bool visible;

  /// Defines the dismissibility of [BootstrapAlert].
  ///
  /// If [isDismissible] is `true`, a close button will appear.
  final bool isDismissible;

  /// If [autoCloseDuration] is not `null`, it will dismiss after that time.
  final Duration? autoCloseDuration;

  /// If [leadingIcon] is not `null`, it will appear.
  ///
  /// Predefined Icons are accessible by the [AlertIcons] class.
  final IconData? leadingIcon;

  /// Default: `EdgeInsets.only(bottom: 16)`
  final EdgeInsetsGeometry? margin;

  /// Default: `EdgeInsets.all(16)`
  final EdgeInsetsGeometry? padding;

  /// Default: `BorderRadius.circular(4)`
  final BorderRadius? borderRadius;

  /// Default: `AlertStatus.primary`
  final AlertStatus status;

  // Triggers when the [BootstrapAlert] is dismissed.
  final VoidCallback? onDismissed;

  @override
  State<BootstrapAlert> createState() => _BootstrapAlertState();
}

class _BootstrapAlertState extends State<BootstrapAlert> {
  late bool visible;
  late final AlertColor alertColor;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    visible = widget.visible;
    alertColor = widget.status.alertColor;
    if (widget.autoCloseDuration != null) {
      timer = Timer(widget.autoCloseDuration!, _dismissAlert);
    }
  }

  @override
  void didUpdateWidget(BootstrapAlert oldWidget) {
    super.didUpdateWidget(oldWidget);
    visible = widget.visible;
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: Visibility(
        visible: visible,
        key: UniqueKey(),
        child: Container(
          margin: margin,
          padding: padding,
          decoration: BoxDecoration(
            color: alertColor.backgroundColor,
            border: border,
            borderRadius: borderRadius,
          ),
          child: Row(
            children: [
              if (widget.leadingIcon != null)
                AlertIcon(
                  icon: widget.leadingIcon!,
                  color: alertColor.color,
                ),
              Expanded(
                child: AlertText(text: widget.text, color: alertColor.color),
              ),
              if (widget.isDismissible)
                AlertDismissButton(dismiss: _dismissAlert),
            ],
          ),
        ),
      ),
    );
  }

  EdgeInsetsGeometry get margin => widget.margin ?? _defaultMargin;
  EdgeInsetsGeometry get padding => widget.padding ?? _defaultPadding;
  Border get border => Border.all(color: alertColor.borderColor, width: 1);
  BorderRadius get borderRadius => widget.borderRadius ?? _defaultBorderRadius;

  void _dismissAlert() {
    if (visible) {
      timer?.cancel();
      setState(() {
        visible = false;
      });
      if (widget.onDismissed != null) {
        widget.onDismissed!();
      }
    }
  }
}