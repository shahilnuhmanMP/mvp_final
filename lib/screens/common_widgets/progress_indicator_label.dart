
import 'package:flutter/material.dart';

class ProgressIndicatorLabel extends StatelessWidget {
  const ProgressIndicatorLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 4, right: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Progress',
            style: TextStyle(
                color: Color.fromRGBO(120, 120, 120, 1),
                fontSize: 13),
          ),
          Text('64%',
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(120, 120, 120, 1),
              ))
        ],
      ),
    );
  }
}
