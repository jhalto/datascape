import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/custom_colors.dart';
import '../widgets/drawer_design.dart';
import 'login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _drawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: _drawerController,
      drawer: const DrawerDesign(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: fieldColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: customAppbar(
            onPressed: () {
              _drawerController.showDrawer();
            },
          ),
        ),
        body: Container(
   padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),

          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top: 20, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: SizedBox(
                                    
                                    width: double.infinity,
                                    child: Image.asset(
                                      "lib/images/lorem.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: Text(
                                    "My Profile",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: SizedBox(

                                  width: double.infinity,
                                  child: Image.asset(
                                    "lib/images/lorem.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Text(
                                  "My Profile",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top: 20, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: SizedBox(

                                    width: double.infinity,
                                    child: Image.asset(
                                      "lib/images/lorem.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: Text(
                                    "My Profile",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: SizedBox(

                                  width: double.infinity,
                                  child: Image.asset(
                                    "lib/images/lorem.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Text(
                                  "My Profile",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top: 20, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: SizedBox(

                                    width: double.infinity,
                                    child: Image.asset(
                                      "lib/images/lorem.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: Text(
                                    "My Profile",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: SizedBox(

                                  width: double.infinity,
                                  child: Image.asset(
                                    "lib/images/lorem.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Text(
                                  "My Profile",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),



              // Repeat similar blocks for the remaining rows
            ],
          ),
        ),
      ),
    );
  }
}
