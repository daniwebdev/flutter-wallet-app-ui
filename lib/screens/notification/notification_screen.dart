import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_ui/colors.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back,
          color: ColorCustoms.secondary,
        ),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Notification",
            style: TextStyle(
              color: ColorCustoms.secondary,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.more_vert_outlined,
                color: ColorCustoms.secondary,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(),
    );
  }
}
