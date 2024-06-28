import 'package:flutter/material.dart';
import 'package:mvp/screens/common_widgets/linear_progress_indicator.dart';
import 'package:mvp/screens/common_widgets/progress_indicator_label.dart';
import 'package:mvp/screens/common_widgets/task_details.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    // ignore: non_constant_identifier_names
    required this.RandomImages,
  });

  // ignore: non_constant_identifier_names
  final List RandomImages;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration:
          BoxDecoration(color: Theme.of(context).primaryColor, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08), // Shadow color
          spreadRadius: 4, // Spread radius
          blurRadius: 7, // Blur radius
          offset: const Offset(0, 3), // Offset in x and y direction
        ),
      ]),
      padding: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('MVP Mobile App Design',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const TaskDetails(isHome: false);
                    },
                  ));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 4, top: 10),
                  // padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromRGBO(215, 215, 215, 1),
                        width: 2),
                  ),
                  child: const Icon(Icons.more_horiz_rounded),
                ),
              ),
              // IconButton(
              //     onPressed: () {
              //       //
              //     },
              //     icon: const Icon(Icons.more_horiz_rounded))
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Task planner App with clean and modern... ',
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  color: Color.fromRGBO(159, 159, 159, 1)),
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
          const ProgressIndicatorLabel(),
          const LinearProgressIndicatorWidget(percentage: 0.64),
        ],
      ),
    );
  }
}
