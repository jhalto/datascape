import 'dart:convert';
import 'package:datascape/task_pages/dashboard.dart';
import 'package:datascape/widgets/color_widgets.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_colors.dart';


class DrawerDesign extends StatefulWidget {
  const DrawerDesign({super.key});

  @override
  State<DrawerDesign> createState() => _DrawerDesignState();
}

class _DrawerDesignState extends State<DrawerDesign> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: koraNeel.withOpacity(0.8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPictureSize: const Size(70, 70),
            margin: const EdgeInsets.only(bottom: 0),
            decoration: BoxDecoration(color: koraNeel),
            accountName: Text(
             "Zobayer Arman Nadim", // Fallback while loading
              style: const TextStyle(fontSize: 18),
            ),
            accountEmail: Text(
             "zobayerarmannadim@gmail.com", // Fallback while loading
              style: const TextStyle(fontSize: 16),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  AssetImage("lib/images/lorem.png"),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.home, color: Colors.white),
                  title: const Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {

                  },
                ),
                ListTile(

                  leading: const Icon(Icons.home, color: Colors.white),
                  title: const Text(
                    "Change Password",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {

                  },
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20, bottom:  50),
            child: customButton(
              text: "Log Out",
              onPressed: () async {

              },
            ),
          ),
        ],
      ),
    );
  }
}

