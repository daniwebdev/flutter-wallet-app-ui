import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_ui/colors.dart';

class AccessIconWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  AccessIconWidget({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFF91DDF7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              this.icon,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            this.text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class TransactionItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final Color colorImage;

  TransactionItemWidget({
    this.colorImage,
    this.title,
    this.image = 'https://ecs7.tokopedia.net/assets-tokopedia-lite/prod/icon144.png',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(color: this.colorImage.withAlpha(90), borderRadius: BorderRadius.circular(10)),
            child: SizedBox(
              width: 35,
              height: 35,
              child: Image.network(
                this.image,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 15,
                      color: ColorCustoms.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text("7 April"),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "- Rp. 200,000",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFFA6D6D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text("Beli Baju Lebaran"),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailTransactionModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, bottom: 25),
            child: Text(
              "Transaction History",
              style: TextStyle(
                fontSize: 18,
                color: ColorCustoms.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(20, (index) {
                  return TransactionItemWidget(
                    title: "Tokopedia",
                    colorImage: Color(0xFF47AD14),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
