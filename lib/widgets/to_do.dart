import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../constants/size_config.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.safeBlockVertical! * 20, // 80 % of the Screen Height
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5),
                height: SizeConfig.safeBlockHorizontal! *
                    15, // 80 % of the Screen Height
                width: SizeConfig.safeBlockVertical! * 32,
                decoration: BoxDecoration(
                  color: index.isEven
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('SnapShot',
                              style: Theme.of(context).textTheme.bodySmall!),
                          Container(
                            child: Image.asset(
                              'assets/icons/more.png',
                              width: 25,
                              height: 25,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Splash Screen',
                        style: index.isOdd
                            ? Theme.of(context).textTheme.bodyMedium
                            : Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).secondaryHeaderColor),
                      ),
                      LinearPercentIndicator(
                        lineHeight: 5,
                        animation: true,
                        animationDuration: 2000,
                        progressColor: Theme.of(context).secondaryHeaderColor,
                        backgroundColor: Theme.of(context)
                            .secondaryHeaderColor
                            .withOpacity(0.2),
                        barRadius: const Radius.circular(15),
                        percent: 0.4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Till Mon 7 March',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            ' 40 %',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
