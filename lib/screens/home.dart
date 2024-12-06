import 'package:datascape/screens/login.dart';
import 'package:datascape/widgets/appbar_widget.dart';
import 'package:datascape/widgets/custom_colors.dart';
import 'package:datascape/widgets/drawer_design.dart';
import 'package:datascape/widgets/font_style_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:table_calendar/table_calendar.dart';

import '../widgets/color_widgets.dart';

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

      drawer: DrawerDesign(),
      child: Scaffold(
           backgroundColor: fieldColor,
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(60), child: customAppbar(
            onPressed: (){
              _drawerController.showDrawer();
            },

          )),
          body: Container(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.06),
            child: Column(
              children: [
               Expanded(child: Padding(
                 padding: const EdgeInsets.only(left: 20.0 ,right: 20,top: 20,bottom: 10),
                 child: Row(
                   children: [
                     Expanded(child: GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                       },
                       child: Card(

                         child: Column(
                           children: [
                             Container(
                                     height: MediaQuery.of(context).size.height*.15,
                                 width: double.infinity,
                                 child: Image.asset("lib/images/lorem.png",fit: BoxFit.fill,)),
                             Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                           ],
                         ),
                       ),
                     ),),
                     SizedBox(width: 20,),
                     Expanded(child: Card(

                       child: Column(
                         children: [
                           Container(
                               height: MediaQuery.of(context).size.height*.15,
                               width: double.infinity,
                               child: Image.asset("lib/images/lorem.png",fit: BoxFit.fill,)),
                           Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                         ],
                       ),
                     ),)
                   ],
                 ),
               )),
               Expanded(child: Padding(
                 padding: const EdgeInsets.only(left: 20.0 ,right: 20,top: 10,bottom: 10),
                 child: Row(
                   children: [
                     Expanded(child: Card(

                       child: Column(
                         children: [
                           Container(
                             width: double.infinity,
                               height: MediaQuery.of(context).size.height*.15,
                               child: Image.asset("lib/images/lorem.png",fit: BoxFit.fill,)),
                           Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                         ],
                       ),
                     ),),
                     SizedBox(width: 20,),
                     Expanded(child: Card(

                       child: Column(
                         children: [
                           Container(
                             width: double.infinity,
                               height: MediaQuery.of(context).size.height*.15,
                               child: Image.asset("lib/images/lorem.png",fit: BoxFit.fill,)),
                           Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                         ],
                       ),
                     ),)
                   ],
                 ),
               )),
               Expanded(child: Padding(
                 padding: const EdgeInsets.only(left: 20.0 ,right: 20,top: 10,bottom: 20),
                 child: Row(
                   children: [
                     Expanded(child: Card(

                       child: Column(
                         children: [
                           Container(
                             width: double.infinity,
                               height: MediaQuery.of(context).size.height*.15,
                               child: Image.asset("lib/images/lorem.png",fit: BoxFit.fill,)),
                           Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                         ],
                       ),
                     ),),
                     SizedBox(width: 16,),
                     Expanded(child: Card(

                       child: Column(
                         children: [
                           Container(
                             width: double.infinity,
                               height: MediaQuery.of(context).size.height*.15,
                               child: Image.asset("lib/images/lorem.png",fit: BoxFit.fill,)),
                           Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                         ],
                       ),
                     ),)
                   ],
                 ),
               )),
              ],
            ),
          ),
      ),
    );
  }
}
