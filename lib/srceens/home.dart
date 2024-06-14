import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140.0),
        child: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10,left: 10.0),
            child: ImageIcon(
              AssetImage("assets/images/dp.jpg"),
              size: 100,
              color: Theme.of(context).cardColor,
            ),
          ),
          title: Text(
            "Money Tracking",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).cardColor,)
            ),
        ),
      ),
    );
  }
}