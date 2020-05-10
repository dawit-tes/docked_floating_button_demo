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
          elevation: 6,
          child: Icon(
            Icons.add,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueGrey,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      icon: Icon(icon),
      onPressed: onTap,
    );
  }
}
