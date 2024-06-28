import 'package:flutter/material.dart';
import 'package:mvp/screens/common_widgets/linear_progress_indicator.dart';
import 'package:mvp/screens/common_widgets/progress_indicator_label.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    // ignore: non_constant_identifier_names
    required this.RandomImages,
    required this.taskStatus,
  });

  // ignore: non_constant_identifier_names
  final List RandomImages;
  final String taskStatus;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:
            BoxDecoration(color: Theme.of(context).primaryColor, boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08), // Shadow color
            spreadRadius: 4, // Spread radius
            blurRadius: 7, // Blur radius
            offset: const Offset(0, 3), // Offset in x and y direction
          ),
        ]),
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(6),
                      //padding: EdgeInsets.all(8),
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // shape: BoxShape.circle,
                        image: const DecorationImage(
                          image:
                              AssetImage('assets/images/kudos_furniture.png'),
                          // fit: BoxFit.cover,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(width: 0.6, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Kudos Website',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      //
                    },
                    icon: const Icon(Icons.more_horiz_rounded))
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 6),
              child: Text(
                'Task planner App with clean and modern... ',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              // margin: EdgeInsets.all(7),
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < RandomImages.length; i++)
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 0),
                          child: Align(
                              widthFactor: 0.5,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage: AssetImage(
                                  RandomImages[i],
                                ),
                              )),
                        )
                    ],
                  ),
                  Align(
                    widthFactor: 0.5,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: 20,
                      child: const Text('2+'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.all(3),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
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
                          'High Priority',
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).primaryColor),
                        )
                      ],
                    ),
                  ),
                  Text(
                    taskStatus,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: taskStatus == 'Pending'
                          ? Colors.orange
                          : Colors.green,
                    ),
                  )
                ],
              ),
            ),
            const ProgressIndicatorLabel(),
            const LinearProgressIndicatorWidget(percentage: 0.64),
          ],
        ),
      ),
    );
  }
}
