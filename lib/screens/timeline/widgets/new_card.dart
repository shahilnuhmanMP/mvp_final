import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';

class MeetingCard extends StatelessWidget {
  final String priorityText;
  const MeetingCard({
    required this.priorityText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Meeting with\n client',
                  style: TextStyle(
                    fontSize: 14,
                    //color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {
                      //
                    },
                    icon: const Icon(Icons.more_horiz_rounded))
              ],
            ),
            kHeight10,
            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Time',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(159, 159, 159, 1),
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  '11:00Pm',
                  style: TextStyle(
                    fontSize: 12,
                    //color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Poppins',
                  ),
                )
              ],
            ),
            kHeight10,
            //Priority
            Container(
              margin: const EdgeInsets.all(3),
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.red,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    priorityText,
                    style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        height: 1.36),
                  )
                ],
              ),
            ),

            kHeight10,
            //Zoom Link
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color.fromRGBO(234, 234, 234, 1)),
              padding: const EdgeInsets.all(3),
              child: const Row(
                children: [
                  Text(
                    'www.https://zoom.us/',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.copy,
                    size: 13,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
