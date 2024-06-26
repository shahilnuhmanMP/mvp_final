import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';
import 'package:mvp/screens/projects/projects_screen.dart';

class TimelineScreen extends StatelessWidget {
  List RandomImages = [
    'assets/images/a1ba09bb0346bae3ca48e70edba34599.jpeg',
    'assets/images/b4eff3d8d21abc32c56622f0f0f50687.png',
    'assets/images/dfb63a3acf743acb78f016547dd7b2ca.jpeg',
    'assets/images/ebe9b02a823a4a1a5d8d74b9fb46f846.jpeg'
  ];
  TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: const Icon(Icons.arrow_back, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                'Time Line',
                style: appbarFont,
              ),
            ),
            body: Container(
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.all(3),
                child: ListView(children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text(
                      'May,18',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text('24,Tuesday',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500)),
                  ),
                  TaskCard(RandomImages: RandomImages),
                  kHeight10,

                  /// meetings
                  const SizedBox(
                    height:
                        200, // Set a height to ensure the cards are properly displayed
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MeetingCard(priorityText: 'High Priority'),
                          MeetingCard(priorityText: 'Medium Priority'),
                          MeetingCard(priorityText: 'Low Priority'),

                          // Add more MeetingCard widgets as needed
                        ],
                      ),
                    ),
                  ),

                  //task
                  TaskCard(RandomImages: RandomImages)
                ]))));
  }
}

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.RandomImages,
  });

  final List RandomImages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('MVP Mobile App Design',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 1))),
                  IconButton(
                      onPressed: () {
                        //
                      },
                      icon: const Icon(Icons.more_horiz_rounded))
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Task planner App with clean and modern... ',
                  style: TextStyle(color: Colors.grey),
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
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: 22,
                      child: const Text('2+'),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Progress',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Text(
                      '64%',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              LinearProgressIndicatorWidget(percentage: 0.64),
            ],
          ),
        ),
      ),
    );
  }
}

class MeetingCard extends StatelessWidget {
  final String priorityText;
  const MeetingCard({
    required this.priorityText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Padding(
        padding: EdgeInsets.all(8),
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
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {
                      //
                    },
                    icon: Icon(Icons.more_horiz_rounded))
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
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Poppins',
                  ),
                )
              ],
            ),
            kHeight10,
            //Priority
            Container(
              margin: EdgeInsets.all(3),
              padding: EdgeInsets.all(3),
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
              padding: EdgeInsets.all(3),
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
