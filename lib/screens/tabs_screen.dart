import 'package:flutter/material.dart';
import 'package:personalexp/constants/form_constants.dart';
import 'package:personalexp/screens/home_screens.dart';
import 'package:personalexp/screens/in_progress_tasks.dart';
import 'package:personalexp/screens/mandatory_tasks.dart';
import 'package:personalexp/screens/pending_tasks.dart';

import '../constants/size_config.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _addTask(BuildContext context, double height) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (context) => Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/icons/edit.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add Task',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: defaultInputDecoration.copyWith(
                  hintText: 'Task title *',
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 3,
                decoration: defaultInputDecoration.copyWith(
                  hintText: 'Task Description *',
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  contentPadding: const EdgeInsets.all(10),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Add Task'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> icons = [
    'assets/icons/category.png',
    'assets/icons/task.png',
    'assets/icons/calendar.png',
    'assets/icons/user.png'
  ];
  final List<Map<String, dynamic>> _pageDetails = [
    {'pageName': const HomeScreen(), 'title': 'Pending Tasks'},
    {'pageName': const PendingTasks(), 'title': 'Completed Tasks'},
    {'pageName': const MandatoryTasks(), 'title': 'Favorite Tasks'},
    {'pageName': const InProgressTasks(), 'title': 'Favorite Tasks'},
  ];
  var pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              maxRadius: 25,
              backgroundImage: AssetImage('assets/images/ahmed.jpg'),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                'Ahmed Shalaby',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          actions: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'assets/icons/search.png',
                width: 20,
                height: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'assets/icons/bell.png',
                width: 20,
                height: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        body: _pageDetails[pageIndex]['pageName'],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: GestureDetector(
          onTap: () => _addTask(context, 800),
          child: Transform.rotate(
            angle: 0.7,
            child: Container(
              width: 43,
              height: 43,
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Transform.rotate(
                  angle: 0.9,
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),

          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(0, 1),
                blurRadius: 2,
              )
            ],
          ),
          height:
              SizeConfig.safeBlockVertical! * 6, // 80 % of the Screen Height
          width: SizeConfig.safeBlockHorizontal! * 95, // 80 of the Screen width
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              icons.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = index;
                  });
                },
                child: Container(
                  child: Image.asset(
                    icons[index],
                    width: 20,
                    height: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
