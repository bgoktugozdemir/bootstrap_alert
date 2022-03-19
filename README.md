
| Default                                                    | isDismissable                                                          | autoCloseDuration                                                              |
| ---------------------------------------------------------- | ---------------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| ![Default Alerts](screenshot/Default.png "Default Alerts") | ![Dismissible Alerts](screenshot/Dismissible.png "Dismissible Alerts") | ![AutoCloseDuration Alerts](screenshot/Dismiss.gif "AutoCloseDuration Alerts") |

[`bootstrap_alert`](https://pub.dev/packages/bootstrap_alert) package helps to show some alerts to users. This package was inspired by [Bootstrap](https://getbootstrap.com/).

## Getting started

Add the package in `pubspec.yaml`.

```yaml
dependencies:
    bootstrap_alert: latest
```

## Usage

![Default Primary Alert](screenshot/Default-Primary.png "Default Primary Alert")
```dart
BootstrapAlert(
    visible: true,
    status: AlertStatus.primary,
    text: 'Default Primary Alert',
),
```

---

![Warning with Icon Alert](screenshot/Warning-Icon.png "Warning with Icon Alert")
```dart
BootstrapAlert(
    visible: true,
    status: AlertStatus.warning,
    leadingIcon: AlertIcons.warning,
    text: 'Warning Alert with Icon',
),
```

---

![Success with Icon and Dismiss Button Alert](screenshot/Success-Icon-Dismiss.png "Success with Icon and Dismiss Button Alert")
```dart
BootstrapAlert(
    visible: true,
    status: AlertStatus.success,
    leadingIcon: AlertIcons.success,
    isDismissible: true,
    text: 'Success Alert with Icon',
),
```

---

![Danger with Icon, Dismiss Button and Auto Close Alert](screenshot/Danger-Icon-Dismiss-AutoClose.gif "Danger with Icon, Dismiss Button and Auto Close Alert")
```dart
BootstrapAlert(
    visible: true,
    status: AlertStatus.danger,
    leadingIcon: AlertIcons.warning,
    isDismissible: true,
    autoCloseDuration: Duration(seconds: 1),
    text: 'Danger Alert with Icon, Dismiss Button and Auto Close',
),
```

---

![Primary with BorderRadius Alert](screenshot/Primary-Radius.png "Primary with BorderRadius Alert")
```dart
BootstrapAlert(
    visible: true,
    text: 'Danger Alert with Icon, Dismiss Button and Auto Close',
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(36),
        bottomRight: Radius.circular(36),
    ),
),
```

---

![Primary with Padding Alert](screenshot/Primary-Padding.png "Primary with Padding Alert")
```dart
BootstrapAlert(
    visible: true,
    text: 'Danger Alert with Icon, Dismiss Button and Auto Close',
    padding: EdgeInsets.all(4),
),
```