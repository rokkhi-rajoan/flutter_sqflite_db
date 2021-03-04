import 'package:flutter/material.dart';

class DrawerNavigator extends StatefulWidget {
  @override
  _DrawerNavigatorState createState() => _DrawerNavigatorState();
}

class _DrawerNavigatorState extends State<DrawerNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Rajoan Rahman"), accountEmail: Text("rajoan@gmail.com"),decoration: BoxDecoration(
              color: Colors.blue
            ),),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){},
            ),

            ListTile(
              leading: Icon(Icons.menu),
              title: Text("Category"),
              onTap: (){
                Navigator.pushNamed(context, '/category');

              },
            )
          ],
        ),
      ),
    );
  }
}
