import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';
import 'package:mvp/screens/common_widgets/task_details.dart';

class TaskTileWidget extends StatelessWidget {
  final Icon iconValue;
  final bool todayTab;
  const TaskTileWidget({
    required this.iconValue,
    required this.todayTab,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const TaskDetails(
              isHome: true,
            );
          },
        ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(235, 212, 212, 210),
                  borderRadius: BorderRadius.circular(12)),
              //backgroundColor: Colors.grey,
              child: const Text(
                'Ui Ux design',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    fontFamily: 'Poppins'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Design Task management App ',
                  style: kHeadingFont,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 4, top: 10),
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: kblack,
                    shape: BoxShape.circle,
                    // border: Border.all(
                    //     color: const Color.fromRGBO(215, 215, 215, 1),
                    //     width: 2),
                  ),
                  child: const Icon(
                    Icons.check,
                    color: kwhite,
                    size: 14,
                  ),
                ),

                // const Icon(Icons.done_outlined)
              ],
            ),
            const Text(
              'Redesign fashion app for up dribble',
              style: TextStyle(fontSize: 12),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Apr 20-2024 , 10:00 am',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color.fromRGBO(87, 87, 87, 1)),
                ),
                if (!todayTab)
                  const Text(
                    '5 points',
                    style: TextStyle(fontSize: 13),
                  ),
                const Text(
                  '5 hours',
                  style: TextStyle(fontSize: 13),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
