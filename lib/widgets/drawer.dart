import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/image/myimage.jpg'),
                  ),
                  accountName: Text("Md Sayeedur Rahman"),
                  accountEmail: Text("sayeedur.rahman@redoq.co.uk")
              )
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text("Home",textScaler: TextScaler.linear(1.2), style: TextStyle(color: Colors.white),),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text("My Profile",textScaler: TextScaler.linear(1.2), style: TextStyle(color: Colors.white),),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text("Mail me",textScaler: TextScaler.linear(1.2), style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
