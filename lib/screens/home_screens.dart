import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constants/size_config.dart';
import '../widgets/headers.dart';
import '../widgets/in_progress.dart';
import '../widgets/to_do.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'we Have Got ',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  '12',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                ),
                Text(
                  ' Task\'s Today',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Container(
              height: SizeConfig.safeBlockVertical! *
                  15, // 80 % of the Screen Height
              width: SizeConfig.safeBlockHorizontal! *
                  95, // 80 of the Screen width

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  7,
                  (index) {
                    DateTime date = DateTime.now().add(Duration(
                      days: index,
                    ));
                    Map<String, String> Days = {
                      'day': DateFormat().add_E().format(date),
                      'Month': DateFormat().add_d().format(date),
                    };
                    return Container(
                      margin: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: const Offset(0, 1),
                            blurRadius: 2,
                          )
                        ],
                        color: index == 2
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: SizeConfig.safeBlockHorizontal! * 10,
                      height: SizeConfig.safeBlockVertical! * 9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            Days['day']!,
                            style: index == 2
                                ? Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.white)
                                : Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text(
                            Days['Month']!,
                            style: index == 2
                                ? Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.white)
                                : Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Headers(header: 'To Do', num: '7'),
            const SizedBox(
              height: 10,
            ),
            const Inprogress(),
            const SizedBox(
              height: 10,
            ),
            const Headers(header: 'in progress', num: '4'),
            const SizedBox(
              height: 10,
            ),
            const ToDo(),
          ],
        ),
      ),
    );
  }
}
