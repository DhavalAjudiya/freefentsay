import 'package:flutter/material.dart';
import 'package:freefentasy/widget/customappbar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: CustomFixAppbar(
          data: 'Settings',
          automaticallyImplyLeading: false,
        ),
      ),
      body: Column(
        children: const [
          ListTile(
            leading: Icon(
              Icons.person_add_alt,
              size: 22,
            ),
            title: Text(
              'Invite Friends, Get 100',
              style: TextStyle(fontSize: 15),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.person_outline,
              size: 22,
            ),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 15),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.notifications_none,
              size: 22,
            ),
            title: Text(
              'Notification',
              style: TextStyle(fontSize: 15),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.announcement_outlined,
              size: 22,
            ),
            title: Text(
              'About Us',
              style: TextStyle(fontSize: 15),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.mode_edit_outline,
              size: 22,
            ),
            title: Text(
              'Legality',
              style: TextStyle(fontSize: 15),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.verified_outlined,
              size: 22,
            ),
            title: Text(
              'Tearms and conditions',
              style: TextStyle(fontSize: 15),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.power_settings_new,
              size: 22,
            ),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 15),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }
}
