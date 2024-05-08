import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class TratingProgress extends StatelessWidget {
  const TratingProgress({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              text,
              style:
                  Theme.of(context).textTheme.bodyMedium,
            )),
        Expanded(
            flex: 11,
            child: SizedBox(
              width:
                  TDeviceUtility.getScreenWidht(context) *
                      0.8,
              child: LinearProgressIndicator(
                value: value,
                minHeight: 11,
                backgroundColor: Colors.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor: const AlwaysStoppedAnimation(
                    Tcolors.primaryColor),
              ),
            )
          )
      ],
    );
  }
}
