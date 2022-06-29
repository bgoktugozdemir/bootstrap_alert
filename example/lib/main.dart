import 'package:bootstrap_alert/bootstrap_alert.dart';
import 'package:example/show_alert_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool successBootstrapAlertVisibility = false;
  bool dangerBootstrapAlertVisibility = false;
  bool warningBootstrapAlertVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              BootstrapAlert(
                visible: successBootstrapAlertVisibility,
                text: 'Success alert message',
                status: AlertStatus.success,
              ),
              BootstrapAlert(
                visible: dangerBootstrapAlertVisibility,
                text: 'Danger alert message',
                isDismissible: true,
                status: AlertStatus.danger,
                onDismissed: () => dangerBootstrapAlertVisibility = false,
              ),
              BootstrapAlert(
                visible: warningBootstrapAlertVisibility,
                text: 'Warning alert message',
                autoCloseDuration: const Duration(seconds: 2),
                status: AlertStatus.warning,
                onDismissed: () => warningBootstrapAlertVisibility = false,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ShowAlertButton(
                        text: 'Success Bootstrap Alert',
                        onTap: () => setState(() {
                          successBootstrapAlertVisibility =
                              !successBootstrapAlertVisibility;
                        }),
                      ),
                      ShowAlertButton(
                        text: 'Danger Bootstrap Alert',
                        onTap: () => setState(() {
                          dangerBootstrapAlertVisibility =
                              !dangerBootstrapAlertVisibility;
                        }),
                      ),
                      ShowAlertButton(
                        text: 'Warning Bootstrap Alert',
                        onTap: () => setState(() {
                          warningBootstrapAlertVisibility =
                              !warningBootstrapAlertVisibility;
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
