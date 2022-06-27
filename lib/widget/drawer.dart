import 'package:demo4/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.cyan,
      child: ListView(
        children: [
          const DrawerHeader(
            margin: EdgeInsets.all(0.0),
            padding: EdgeInsets.all(0.0),
            child: UserAccountsDrawerHeader(
              accountName:
                  Text("A.P.J.", style: TextStyle(color: Colors.black)),
              accountEmail:
                  Text("APJ@gmail.com", style: TextStyle(color: Colors.black)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/img6.jpg"),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.black),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          GestureDetector(
            onTap: (() => Navigator.pushNamed(context, MyRoutes.loginRoutes)),
            child: const ListTile(
              leading: Icon(CupertinoIcons.lock, color: Colors.black),
              title: Text(
                "Login",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.location, color: Colors.black),
            title: Text(
              "Location",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.alarm, color: Colors.black),
            title: Text(
              "Alaram",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.airplane, color: Colors.black),
            title: Text(
              "Airplane Mode",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.calendar, color: Colors.black),
            title: Text(
              "Calander",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
