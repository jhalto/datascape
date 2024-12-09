import 'package:datascape/screens/task_list.dart';
import 'package:datascape/task_pages/abp.dart';
import 'package:datascape/task_pages/compliance_tracker.dart';
import 'package:datascape/task_pages/decision_log.dart';
import 'package:datascape/task_pages/our_projects.dart';
import 'package:datascape/task_pages/reports.dart';
import 'package:datascape/task_pages/submission_tracker.dart';
import 'package:flutter/material.dart';

import '../task_pages/dashboard.dart';
import 'color_widgets.dart';

class TaskDrawer extends StatefulWidget {
  const TaskDrawer({super.key});

  @override
  State<TaskDrawer> createState() => _TaskDrawerState();
}

class _TaskDrawerState extends State<TaskDrawer> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: koraNeel.withOpacity(0.8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPictureSize: Size(70, 70),
            margin: EdgeInsets.only(bottom: 0),
            decoration: BoxDecoration(color: koraNeel),
            accountName: Padding(
              padding: EdgeInsets.only(top:25.0),
              child: Text(
                "DATASCAPE", // Fallback while loading
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
              ),
            ),
            accountEmail: Text(
              "", // Fallback while loading
              style: TextStyle(fontSize: 16),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("lib/images/lorem.png"),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: const Icon(Icons.dashboard, color: Colors.white),
                  title: const Text(
                    "Dashboard",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard(),));
                  },
                ),
                ListTile(

                  leading: const Icon(Icons.analytics_outlined, color: Colors.white),
                  title: const Text(
                    "Our Projects",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OurProjects(),));
                  },
                ),
                ListTile(

                  leading: const Icon(Icons.task, color: Colors.white),
                  title: const Text(
                    "Task Management",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskList(),));
                  },
                ),
                ListTile(

                  leading: const Icon(Icons.ac_unit, color: Colors.white),
                  title: const Text(
                    "Compliance Tracker",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ComplianceTracker(),));
                  },
                ),
                ListTile(

                  leading: const Icon(Icons.add_task, color: Colors.white),
                  title: const Text(
                    "Submission Tracker",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SubmissionTracker(),));
                  },
                ),
                ListTile(

                  leading: const Icon(Icons.show_chart_outlined, color: Colors.white),
                  title: const Text(
                    "ABP",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Abp(),));
                  },
                ),
                ListTile(

                  leading: const Icon(Icons.handshake, color: Colors.white),
                  title: const Text(
                    "Decision Log",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DecisionLog(),));
                  },
                ),
                ListTile(

                  leading: const Icon(Icons.report_gmailerrorred_sharp, color: Colors.white),
                  title: const Text(
                    "Report",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Reports(),));
                  },
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
