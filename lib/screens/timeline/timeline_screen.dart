import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';
import 'package:mvp/provider/theme_provider.dart';
import 'package:mvp/screens/timeline/widgets/new_card.dart';
import 'package:mvp/screens/timeline/widgets/task_card.dart';

// ignore: must_be_immutable
class TimelineScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List RandomImages = [
    'assets/images/a1ba09bb0346bae3ca48e70edba34599.jpeg',
    'assets/images/b4eff3d8d21abc32c56622f0f0f50687.png',
    'assets/images/dfb63a3acf743acb78f016547dd7b2ca.jpeg',
    'assets/images/ebe9b02a823a4a1a5d8d74b9fb46f846.jpeg'
  ];
  TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>()!;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Container(
                  margin: const EdgeInsets.only(left: 4, top: 10),
                  // padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: customTheme.containerBorderColor!, width: 2),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              centerTitle: true,
              title: Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  'Time Line',
                  style: appbarFont,
                ),
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
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text('24,Tuesday',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                  ),
                  TaskCard(RandomImages: RandomImages),
                  kHeight10,

                  /// meetings
                  const SizedBox(
                    height: 180,
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
                  TaskCard(RandomImages: RandomImages),
                  TaskCard(RandomImages: RandomImages)
                ]))));
  }
}
