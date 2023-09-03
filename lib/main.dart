import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personalexp/screens/home_screens.dart';
import 'package:personalexp/screens/in_progress_tasks.dart';
import 'package:personalexp/screens/mandatory_tasks.dart';
import 'package:personalexp/screens/pending_tasks.dart';
import 'package:personalexp/screens/tabs_screen.dart';
import 'package:personalexp/widgets/headers.dart';
import 'package:personalexp/widgets/in_progress.dart';
import 'package:personalexp/widgets/to_do.dart';
import 'constants/app_theme.dart';
import 'package:provider/provider.dart';

import 'constants/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, ThemeProvider, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Todo list',
          theme: ThemeProvider.themeData,
          home: const TabsScreen(),
          routes: {
            HomeScreen.routeName: (context) => const HomeScreen(),
            InProgressTasks.routeName: (context) => const InProgressTasks(),
            PendingTasks.routeName: (context) => const PendingTasks(),
            MandatoryTasks.routeName: (context) => const MandatoryTasks(),
          },
        ),
      ),
    );
  }
}


/**
 FloatingActionButton(
          onPressed: () =>
              _addTask(context, MediaQuery.of(context).size.height * 0.4),
          child: Icon(Icons.add),
        ) 
 
 Container(
            width: MediaQuery.of(context).size.width * 0.99,
            height: MediaQuery.of(context).size.height * 0.23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                7,
                (index) {
                  DateTime date = DateTime.now().subtract(Duration(
                    days: index,
                  ));
                  Map<String, String> Days = {
                    'day': DateFormat().add_E().format(date),
                    'Month': DateFormat().add_MMMM().format(date),
                  };
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        Days['day']!,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor,
                        ),
                        margin: const EdgeInsets.all(6),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
 */