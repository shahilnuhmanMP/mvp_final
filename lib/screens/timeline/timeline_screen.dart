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
                  child: Icon(Icons.arrow_back, color: Colors.black),
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
                padding: EdgeInsets.all(6),
                margin: EdgeInsets.all(3),
                child: ListView(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Text(
                      'May,18',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Text('24,Tuesday',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500)),
                  ),
                  TaskCard(RandomImages: RandomImages),

                  /// meetings
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MeetingCard(
                          priorityText: 'High Priority',
                        ),
                        MeetingCard(
                          priorityText: 'Low Priority',
                        )
                      ],
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
                  Text('MVP Mobile App Design', style: kheading2font),
                  IconButton(
                      onPressed: () {
                        //
                      },
                      icon: Icon(Icons.more_horiz_rounded))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Task planner App with clean and modern... ',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                // margin: EdgeInsets.all(7),
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < RandomImages.length; i++)
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 0),
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
                      child: Text('2+'),
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
      child: Padding(
        padding: EdgeInsets.only(left: 6, top: 6, bottom: 6),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Meeting with\n client',
                  style: kheading2font,
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
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Time',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  '11:00Pm',
                  style: TextStyle(fontSize: 12),
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
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    priorityText,
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            kHeight10,
            //Zoom Link
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color.fromRGBO(234, 234, 234, 1)),
              padding: EdgeInsets.all(3),
              child: Row(
                children: [
                  Text(
                    'www.https://zoom.us/',
                    style: TextStyle(fontSize: 11),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.copy)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
