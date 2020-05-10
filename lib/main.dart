import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//        This specifies the location of the floating action button
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 6,
          child: Icon(
            Icons.add,
            size: 30.0,
            color: Colors.blueGrey.shade700,
          ),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 8,
          color: Colors.grey.shade500,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                BottomBarItemWidget(
                  icon: Icons.send,
                  onTap: () {},
                ),
                BottomBarItemWidget(
                  icon: Icons.share,
                  onTap: () {},
                ),
                SizedBox(
                  width: 30,
                ),
                BottomBarItemWidget(
                  icon: Icons.star,
                  onTap: () {},
                ),
                BottomBarItemWidget(
                  icon: Icons.info_outline,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomBarItemWidget extends StatelessWidget {
  BottomBarItemWidget({@required this.icon, @required this.onTap});
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: Colors.blueGrey.shade700,
      ),
      onPressed: onTap,
    );
  }
}
