import 'package:flutter/material.dart';

import '../constants/size_config.dart';

class Inprogress extends StatelessWidget {
  const Inprogress({super.key});

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
                    width: SizeConfig.safeBlockVertical! * 25,
                    decoration: BoxDecoration(
                      color: index.isOdd
                          ? Theme.of(context).secondaryHeaderColor
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
                              Text(
                                'SnapShot',
                                style: index.isEven
                                    ? Theme.of(context).textTheme.bodySmall
                                    : Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                              ),
                              Container(
                                child: Image.asset(
                                  'assets/icons/edit.png',
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Redesign',
                            style: index.isEven
                                ? Theme.of(context).textTheme.titleLarge
                                : Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                          Text(
                            'Splash Screen',
                            style: index.isEven
                                ? Theme.of(context).textTheme.titleLarge
                                : Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                          Text(
                            'Till Mon 7 March',
                            style: index.isEven
                                ? Theme.of(context).textTheme.bodySmall
                                : Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  );
                })));
  }
}
