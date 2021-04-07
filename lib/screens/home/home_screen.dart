import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_ui/colors.dart';
import 'package:flutter_wallet_app_ui/screens/home/home_widget.dart';
import 'package:flutter_wallet_app_ui/screens/notification/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                Color(0xFF33D6F2),
                Color(0xFF4DAAED),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Column(
          children: [
            /* Header */
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /* Avatar */
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage('https://www.pngkey.com/png/full/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png'),
                      ),
                    ),
                  ),
                  /* Greeting & Username */
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hallo",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "M. Yusup Hamdani",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  /* Notification Button */
                  IconButton(
                    icon: new Stack(children: <Widget>[
                      new Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      new Positioned(
                        // draw a red marble
                        top: 0.0,
                        right: 0.0,
                        child: new Icon(Icons.brightness_1, size: 8.0, color: Colors.redAccent),
                      )
                    ]),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NotificationScreen()),
                      );
                    },
                  )
                ],
              ),
            ),
            /* Balance */
            Container(
              padding: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Balance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Rp. 200,000,000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /* Access */
            Container(
              margin: EdgeInsets.only(top: 30),
              // width: MediaQuery.of(context).size.width - 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AccessIconWidget(icon: Icons.send_rounded, text: "Send"),
                  AccessIconWidget(icon: Icons.account_balance_wallet, text: "Top Up"),
                  AccessIconWidget(icon: Icons.payment, text: "Pay"),
                  AccessIconWidget(icon: Icons.more_vert_rounded, text: "More"),
                ],
              ),
            ),

            /* Last Transaction */
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                // height: double.,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Last Transaction",
                              style: TextStyle(
                                fontSize: 18,
                                color: ColorCustoms.secondary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (BuildContext ctx) {
                                    return DetailTransactionModal();
                                  });
                            },
                            child: Text(
                              'See all',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF68BBF0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TransactionItemWidget(
                                title: "Tokopedia",
                                colorImage: Color(0xFF47AD14),
                              ),
                              TransactionItemWidget(
                                title: "Bukalapak",
                                colorImage: Color(0xFFE44252),
                                image: 'https://s2.bukalapak.com/marketplace/favicon-new.ico',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
