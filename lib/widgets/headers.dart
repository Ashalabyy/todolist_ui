import 'package:flutter/material.dart';

import '../constants/size_config.dart';

class Headers extends StatelessWidget {
  final String header;
  final String num;
  const Headers({required this.header, required this.num, super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      children: [
        Text(
          header,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height:
              SizeConfig.safeBlockVertical! * 3, // 80 % of the Screen Height
          width: SizeConfig.safeBlockHorizontal! * 6,
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              num,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const Spacer(),
        Text(
          'see all',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
